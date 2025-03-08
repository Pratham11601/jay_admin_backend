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

  // Get all leads with pagination only (no filters)
  getAllWithPagination: async (page, limit) => {
    try {
      // Base query for counting total results
      const countSql = `SELECT COUNT(*) as total FROM leads`;
      const dataSql = `SELECT * FROM leads ORDER BY createdAt DESC LIMIT ?, ?`;
      
      // First get total count
      const [countResult] = await pool.execute(countSql);
      const totalCount = countResult[0].total;
      const totalPages = Math.ceil(totalCount / limit);

      // Get paginated data
      const [rows] = await pool.execute(dataSql, [(page - 1) * limit, parseInt(limit)]);
      
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

  // Search leads by any column
  searchLeads: async (searchTerm, page, limit) => {
    try {
      // Base query for counting total results with search
      const countSql = `SELECT COUNT(*) as total FROM leads WHERE 
                        vendor_name LIKE ? OR 
                        vendor_contact LIKE ? OR 
                        location_from LIKE ? OR 
                        to_location LIKE ? OR 
                        vendor_cat LIKE ? OR
                        car_model LIKE ?`;
      
      const dataSql = `SELECT * FROM leads WHERE 
                      vendor_name LIKE ? OR 
                      vendor_contact LIKE ? OR 
                      location_from LIKE ? OR 
                      to_location LIKE ? OR 
                      vendor_cat LIKE ? OR
                      car_model LIKE ?
                      ORDER BY createdAt DESC LIMIT ?, ?`;
      
      const searchPattern = `%${searchTerm}%`;
      const searchValues = Array(6).fill(searchPattern);
      
      // First get total count
      const [countResult] = await pool.execute(countSql, searchValues);
      const totalCount = countResult[0].total;
      const totalPages = Math.ceil(totalCount / limit);

      // Get paginated data
      const dataValues = [...searchValues, (page - 1) * limit, parseInt(limit)];
      const [rows] = await pool.execute(dataSql, dataValues);
      
      return {
        leads: rows,
        totalPages: totalPages,
        totalCount: totalCount,
        currentPage: page
      };
    } catch (error) {
      throw new Error("Error searching leads: " + error.message);
    }
  },

  // Filter leads by received date (createdAt)
  filterByReceivedDate: async (receivedDate, page, limit) => {
    try {
      // Base query for counting total results with date filter
      const countSql = `SELECT COUNT(*) as total FROM leads WHERE DATE(createdAt) = ?`;
      const dataSql = `SELECT * FROM leads WHERE DATE(createdAt) = ? ORDER BY createdAt DESC LIMIT ?, ?`;
      
      // First get total count
      const [countResult] = await pool.execute(countSql, [receivedDate]);
      const totalCount = countResult[0].total;
      const totalPages = Math.ceil(totalCount / limit);

      // Get paginated data
      const [rows] = await pool.execute(dataSql, [receivedDate, (page - 1) * limit, parseInt(limit)]);
      
      return {
        leads: rows,
        totalPages: totalPages,
        totalCount: totalCount,
        currentPage: page
      };
    } catch (error) {
      throw new Error("Error filtering leads by received date: " + error.message);
    }
  },

  // Filter leads by trip date
  filterByTripDate: async (tripDate, page, limit) => {
    try {
      // Base query for counting total results with trip date filter
      const countSql = `SELECT COUNT(*) as total FROM leads WHERE date = ?`;
      const dataSql = `SELECT * FROM leads WHERE date = ? ORDER BY createdAt DESC LIMIT ?, ?`;
      
      // First get total count
      const [countResult] = await pool.execute(countSql, [tripDate]);
      const totalCount = countResult[0].total;
      const totalPages = Math.ceil(totalCount / limit);

      // Get paginated data
      const [rows] = await pool.execute(dataSql, [tripDate, (page - 1) * limit, parseInt(limit)]);
      
      return {
        leads: rows,
        totalPages: totalPages,
        totalCount: totalCount,
        currentPage: page
      };
    } catch (error) {
      throw new Error("Error filtering leads by trip date: " + error.message);
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