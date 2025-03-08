const pool = require("../config/db");

const Leads = {
  // Create a new lead
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

      const [result] = await pool.execute(sql, values);
      return { id: result.insertId, ...leadData };
    } catch (error) {
      throw new Error("Error creating lead: " + error.message);
    }
  },

  // Get all leads with search and pagination
  getAll: async ({ page, limit, search, receivedOn, tripDate }) => {
    try {
      // Base query for counting total results
      let countSql = `SELECT COUNT(*) as total FROM leads WHERE 1=1`;
      let dataSql = `SELECT * FROM leads WHERE 1=1`;
      let countValues = [];
      let dataValues = [];

      // Add search conditions to both queries
      if (search) {
        const searchCondition = ` AND (vendor_name LIKE ? OR vendor_contact LIKE ? OR location_from LIKE ? OR to_location LIKE ? OR vendor_cat LIKE ?)`;
        countSql += searchCondition;
        dataSql += searchCondition;
        
        const searchPattern = `%${search}%`;
        // Add values for count query
        countValues.push(searchPattern, searchPattern, searchPattern, searchPattern, searchPattern);
        // Add values for data query
        dataValues.push(searchPattern, searchPattern, searchPattern, searchPattern, searchPattern);
      }

      // Add date filters to both queries
      if (receivedOn) {
        const receivedOnCondition = ` AND DATE(createdAt) = ?`;
        countSql += receivedOnCondition;
        dataSql += receivedOnCondition;
        countValues.push(receivedOn);
        dataValues.push(receivedOn);
      }

      if (tripDate) {
        const tripDateCondition = ` AND date = ?`;
        countSql += tripDateCondition;
        dataSql += tripDateCondition;
        countValues.push(tripDate);
        dataValues.push(tripDate);
      }

      // First get total count
      const [countResult] = await pool.execute(countSql, countValues);
      const totalCount = countResult[0].total;
      const totalPages = Math.ceil(totalCount / limit);

      // Add pagination to data query
      dataSql += ` ORDER BY createdAt DESC LIMIT ?, ?`;
      dataValues.push((page - 1) * limit, parseInt(limit));

      // Get paginated data
      const [rows] = await pool.execute(dataSql, dataValues);
      
      return {
        leads: rows,
        totalPages: totalPages,
        totalCount: totalCount,
        currentPage: page
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
      const sql = `UPDATE leads SET date = ?, vendor_id = ?, vendor_name = ?, location_from = ?, location_from_area = ?, car_model = ?, add_on = ?, fare = ?, to_location = ?, to_location_area = ?, time = ?, vendor_contact = ?, vendor_cat = ? WHERE id = ?`;
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