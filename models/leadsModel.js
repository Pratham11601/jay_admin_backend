const pool = require("../config/db"); // Import your connection pool

// Helper function to parse and format dates properly
const parseDateFilter = (dateString) => {
  if (!dateString) return null;
  
  try {
    // Handle DD/MM/YYYY format (from frontend)
    if (dateString.includes('/')) {
      const [day, month, year] = dateString.split('/');
      // Return in MySQL format
      return `${year}-${month}-${day}`;
    }
    
    // If it's already in YYYY-MM-DD format, just return it
    return dateString;
  } catch (err) {
    console.error("Error parsing date:", err);
    return null;
  }
};

const Leads = {
  // ✅ Create a new lead
  create: async (leadData) => {
    try {
      const sql = `INSERT INTO leads (date, vendor_id, vendor_name, location_from, location_from_area, car_model, add_on, fare, to_location, to_location_area, time, vendor_contact, vendor_cat) 
                   VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;
      const values = [
        leadData.date, leadData.vendor_id, leadData.vendor_name, leadData.location_from,
        leadData.location_from_area, leadData.car_model, leadData.add_on, leadData.fare,
        leadData.to_location, leadData.to_location_area, leadData.time, leadData.vendor_contact,
        leadData.vendor_cat
      ];

      const [result] = await pool.execute(sql, values); // Use pool.execute for query execution
      return { id: result.insertId, ...leadData };
    } catch (error) {
      throw new Error("Error creating lead: " + error.message);
    }
  },

  // ✅ Get all leads with search and pagination
  getAll: async ({ page, limit, search, receivedOn, tripDate }) => {
    try {
      let sql = `SELECT * FROM leads WHERE 1=1`;
      let values = [];

      // 🔹 Search feature
      if (search) {
        sql += ` AND (vendor_name LIKE ? OR vendor_contact LIKE ? OR location_from LIKE ? OR to_location LIKE ? OR vendor_cat LIKE ?)`;
        const searchPattern = `%${search}%`;
        values.push(searchPattern, searchPattern, searchPattern, searchPattern, searchPattern);
      }

      // 🔹 Filter by "Received On" - Updated to work with different date formats
      if (receivedOn) {
        const formattedDate = parseDateFilter(receivedOn);
        if (formattedDate) {
          // Convert to MySQL DATE format for comparison with DATETIME field
          sql += ` AND DATE(createdAt) = ?`;
          values.push(formattedDate);
        }
      }

      // 🔹 Filter by "Trip Date" - Updated to work with different date formats
      if (tripDate) {
        const formattedDate = parseDateFilter(tripDate);
        if (formattedDate) {
          sql += ` AND date = ?`;
          values.push(formattedDate);
        }
      }

      // Count total rows for pagination info
      const [countResult] = await pool.execute(
        `SELECT COUNT(*) as total FROM leads WHERE 1=1 ${sql.split('WHERE 1=1')[1].split('ORDER BY')[0]}`, 
        values.slice(0, values.length - 2) // Remove pagination parameters
      );
      const totalCount = countResult[0].total;

      // 🔹 Pagination
      sql += ` ORDER BY createdAt DESC LIMIT ?, ?`;
      values.push((page - 1) * limit, parseInt(limit));

      console.log("SQL Query:", sql); // Debug
      console.log("Query Values:", values); // Debug

      const [rows] = await pool.execute(sql, values); // Execute query
      return { rows, totalCount };
    } catch (error) {
      console.error("Database error:", error);
      throw new Error("Error fetching leads: " + error.message);
    }
  },

  // ✅ Get lead by ID
  getById: async (id) => {
    try {
      const sql = `SELECT * FROM leads WHERE id = ?`;
      const [rows] = await pool.execute(sql, [id]); // Execute query
      return rows.length > 0 ? rows[0] : null;
    } catch (error) {
      throw new Error("Error fetching lead by ID: " + error.message);
    }
  },

  // ✅ Update lead
  update: async (id, leadData) => {
    try {
      const sql = `UPDATE leads SET date = ?, vendor_id = ?, vendor_name = ?, location_from = ?, location_from_area = ?, car_model = ?, add_on = ?, fare = ?, to_location = ?, to_location_area = ?, time = ?, vendor_contact = ?, vendor_cat = ? WHERE id = ?`;
      const values = [
        leadData.date, leadData.vendor_id, leadData.vendor_name, leadData.location_from,
        leadData.location_from_area, leadData.car_model, leadData.add_on, leadData.fare,
        leadData.to_location, leadData.to_location_area, leadData.time, leadData.vendor_contact,
        leadData.vendor_cat, id
      ];

      const [result] = await pool.execute(sql, values); // Execute query
      return result.affectedRows > 0 ? { message: "Lead updated successfully" } : null;
    } catch (error) {
      throw new Error("Error updating lead: " + error.message);
    }
  },

  // ✅ Delete lead
  delete: async (id) => {
    try {
      const sql = `DELETE FROM leads WHERE id = ?`;
      const [result] = await pool.execute(sql, [id]); // Execute query
      return result.affectedRows > 0 ? { message: "Lead deleted successfully" } : null;
    } catch (error) {
      throw new Error("Error deleting lead: " + error.message);
    }
  }
};

module.exports = Leads;