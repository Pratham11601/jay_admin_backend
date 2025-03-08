const db = require("../config/db");

const Leads = {
  // ✅ Get leads with pagination
  getAllLeads: (page, limit, callback) => {
    const offset = (page - 1) * limit;
    const query = `SELECT * FROM leads ORDER BY id DESC LIMIT ? OFFSET ?`;
    db.query(query, [parseInt(limit), parseInt(offset)], callback);
  },

  // ✅ Get total count of leads for pagination
  getTotalLeadsCount: (callback) => {
    const query = `SELECT COUNT(*) AS total FROM leads`;
    db.query(query, callback);
  },

  // ✅ Search leads with pagination
  searchLeads: (search, page, limit, callback) => {
    const offset = (page - 1) * limit;
    const query = `
      SELECT * FROM leads 
      WHERE vendor_name LIKE ? OR location_from LIKE ? 
      OR location_to LIKE ? OR trip_date LIKE ? OR received_on LIKE ?
      ORDER BY id DESC LIMIT ? OFFSET ?`;
    const params = [`%${search}%`, `%${search}%`, `%${search}%`, `%${search}%`, `%${search}%`, parseInt(limit), parseInt(offset)];
    db.query(query, params, callback);
  },

  // ✅ Get total count of search results
  getSearchCount: (search, callback) => {
    const query = `
      SELECT COUNT(*) AS total FROM leads 
      WHERE vendor_name LIKE ? OR location_from LIKE ? 
      OR location_to LIKE ? OR trip_date LIKE ? OR received_on LIKE ?`;
    const params = [`%${search}%`, `%${search}%`, `%${search}%`, `%${search}%`, `%${search}%`];
    db.query(query, params, callback);
  },

  // ✅ Filter leads by received_on and trip_date with pagination
  filterLeads: (receivedOn, tripDate, page, limit, callback) => {
    let query = "SELECT * FROM leads WHERE 1=1";
    const params = [];

    if (receivedOn) {
      query += " AND received_on = ?";
      params.push(receivedOn);
    }

    if (tripDate) {
      query += " AND trip_date = ?";
      params.push(tripDate);
    }

    query += " ORDER BY id DESC LIMIT ? OFFSET ?";
    params.push(parseInt(limit), (page - 1) * limit);

    db.query(query, params, callback);
  },

  // ✅ Get total count for filtered results
  getFilterCount: (receivedOn, tripDate, callback) => {
    let query = "SELECT COUNT(*) AS total FROM leads WHERE 1=1";
    const params = [];

    if (receivedOn) {
      query += " AND received_on = ?";
      params.push(receivedOn);
    }

    if (tripDate) {
      query += " AND trip_date = ?";
      params.push(tripDate);
    }

    db.query(query, params, callback);
  },

  // ✅ Delete lead by ID
  deleteLead: (id, callback) => {
    const query = "DELETE FROM leads WHERE id = ?";
    db.query(query, [id], callback);
  },
};

module.exports = Leads;
