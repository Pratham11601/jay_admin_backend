const pool = require("../config/db");

const Leads = {
  // Create a new lead
  create: async (leadData) => {
    try {
      const sql = `INSERT INTO leads (date, vendor_id, vendor_name, location_from, location_from_area, 
                   car_model, add_on, fare, to_location, to_location_area, time, vendor_contact, vendor_cat) 
                   VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`;
      const values = [
        leadData.date, leadData.vendor_id, leadData.vendor_name, leadData.location_from,
        leadData.location_from_area, leadData.car_model, leadData.add_on, leadData.fare,
        leadData.to_location, leadData.to_location_area, leadData.time, leadData.vendor_contact,
        leadData.vendor_cat
      ];

      const [result] = await pool.execute(sql, values);
      return { id: result.insertId, ...leadData };
    } catch (error) {
      throw new Error("Error creating lead: " + error.message);
    }
  },

  // Get all leads with pagination, search, and filtering
  getAll: async ({ page, limit, search, receivedOn, tripDate }) => {
    try {
      // Build the main query
      let sql = `SELECT * FROM leads WHERE 1=1`;
      let countSql = `SELECT COUNT(*) as total FROM leads WHERE 1=1`;
      let values = [];
      let countValues = [];

      // Add search conditions if search parameter exists
      if (search && search.trim() !== '') {
        const searchCondition = ` AND (
          vendor_name LIKE ? OR 
          vendor_contact LIKE ? OR 
          location_from LIKE ? OR 
          to_location LIKE ? OR 
          vendor_cat LIKE ? OR
          car_model LIKE ?
        )`;
        sql += searchCondition;
        countSql += searchCondition;
        
        const searchPattern = `%${search}%`;
        values.push(searchPattern, searchPattern, searchPattern, searchPattern, searchPattern, searchPattern);
        countValues.push(searchPattern, searchPattern, searchPattern, searchPattern, searchPattern, searchPattern);
      }

      // Filter by "Received On" date (createdAt)
      if (receivedOn) {
        const dateCondition = ` AND DATE(createdAt) = ?`;
        sql += dateCondition;
        countSql += dateCondition;
        values.push(receivedOn);
        countValues.push(receivedOn);
      }

      // Filter by "Trip Date" (date field)
      if (tripDate) {
        const tripDateCondition = ` AND DATE(date) = ?`;
        sql += tripDateCondition;
        countSql += tripDateCondition;
        values.push(tripDate);
        countValues.push(tripDate);
      }

      // Get total count for pagination
      const [countRows] = await pool.execute(countSql, countValues);
      const totalCount = countRows[0].total;
      const totalPages = Math.ceil(totalCount / limit);

      // Add sorting and pagination
      sql += ` ORDER BY createdAt DESC LIMIT ?, ?`;
      values.push((page - 1) * limit, parseInt(limit));

      // Execute the main query
      const [rows] = await pool.execute(sql, values);

      return {
        data: rows,
        pagination: {
          totalCount,
          totalPages,
          currentPage: page,
          limit
        }
      };
    } catch (error) {
      throw new Error("Error fetching leads: " + error.message);
    }
  },

  // Get lead by ID
  getById: async (id) => {
    try {
      const sql = `SELECT * FROM leads WHERE id = ?`;
      const [rows] = await pool.execute(sql, [id]);
      return rows.length > 0 ? rows[0] : null;
    } catch (error) {
      throw new Error("Error fetching lead by ID: " + error.message);
    }
  },

  // Update lead
  update: async (id, leadData) => {
    try {
      const sql = `UPDATE leads SET date = ?, vendor_id = ?, vendor_name = ?, location_from = ?, 
                   location_from_area = ?, car_model = ?, add_on = ?, fare = ?, to_location = ?, 
                   to_location_area = ?, time = ?, vendor_contact = ?, vendor_cat = ? WHERE id = ?`;
      const values = [
        leadData.date, leadData.vendor_id, leadData.vendor_name, leadData.location_from,
        leadData.location_from_area, leadData.car_model, leadData.add_on, leadData.fare,
        leadData.to_location, leadData.to_location_area, leadData.time, leadData.vendor_contact,
        leadData.vendor_cat, id
      ];

      const [result] = await pool.execute(sql, values);
      return result.affectedRows > 0 ? { message: "Lead updated successfully" } : null;
    } catch (error) {
      throw new Error("Error updating lead: " + error.message);
    }
  },

  // Delete lead
  delete: async (id) => {
    try {
      const sql = `DELETE FROM leads WHERE id = ?`;
      const [result] = await pool.execute(sql, [id]);
      return result.affectedRows > 0 ? { message: "Lead deleted successfully" } : null;
    } catch (error) {
      throw new Error("Error deleting lead: " + error.message);
    }
  }
};

module.exports = Leads;