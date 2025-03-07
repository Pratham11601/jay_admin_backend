const db = require("../config/db");

// ✅ Get all Help Support queries with pagination & search
exports.getAll = async (search, page, limit) => {
  try {
    const offset = (page - 1) * limit;
    const searchQuery = `%${search}%`;

    const query = `
      SELECT * FROM help_supports 
      WHERE query_message LIKE ? OR vendor_category LIKE ? OR vendor_name LIKE ? OR vendor_contact LIKE ?
      ORDER BY createdAt DESC 
      LIMIT ? OFFSET ?`;

    const totalQuery = `
      SELECT COUNT(*) AS total FROM help_supports 
      WHERE query_message LIKE ? OR vendor_category LIKE ? OR vendor_name LIKE ? OR vendor_contact LIKE ?`;

    const [data] = await db.query(query, [searchQuery, searchQuery, searchQuery, searchQuery, limit, offset]);
    const [totalResult] = await db.query(totalQuery, [searchQuery, searchQuery, searchQuery, searchQuery]);

    return { total: totalResult[0]?.total || 0, helpSupport: data };
  } catch (error) {
    console.error("Error in getAll:", error);
    throw error;
  }
};

// ✅ Get Help Support by ID
exports.getById = async (id) => {
  try {
    const [data] = await db.query("SELECT * FROM help_supports WHERE id = ?", [id]);
    return data.length ? data[0] : null;
  } catch (error) {
    console.error("Error in getById:", error);
    throw error;
  }
};

// ✅ Add Help Support Query
exports.addHelpSupport = async (data) => {
  try {
    const { query_message, vendor_category, vendor_id, vendor_contact, vendor_name, remark, remark_date } = data;

    const [result] = await db.query(
      `INSERT INTO help_supports 
      (query_message, vendor_category, vendor_id, vendor_contact, vendor_name, remark, remark_date, createdAt, updatedAt) 
      VALUES (?, ?, ?, ?, ?, ?, ?, NOW(), NOW())`,
      [query_message, vendor_category, vendor_id, vendor_contact, vendor_name, remark || "No remarks", remark_date || null]
    );

    return result.insertId;
  } catch (error) {
    console.error("Error in addHelpSupport:", error);
    throw error;
  }
};

// ✅ Update Help Support Query
exports.updateHelpSupport = async (id, data) => {
  try {
    const { query_message, vendor_category, vendor_id, vendor_contact, vendor_name, remark, remark_date } = data;

    const [result] = await db.query(
      `UPDATE help_supports 
      SET query_message = ?, vendor_category = ?, vendor_id = ?, vendor_contact = ?, vendor_name = ?, remark = ?, remark_date = ?, updatedAt = NOW() 
      WHERE id = ?`,
      [query_message, vendor_category, vendor_id, vendor_contact, vendor_name, remark || "No remarks", remark_date || null, id]
    );

    return result.affectedRows > 0;
  } catch (error) {
    console.error("Error in updateHelpSupport:", error);
    throw error;
  }
};

// ✅ Delete Help Support Query
exports.deleteById = async (id) => {
  try {
    const [result] = await db.query("DELETE FROM help_supports WHERE id = ?", [id]);
    return result.affectedRows > 0;
  } catch (error) {
    console.error("Error in deleteById:", error);
    throw error;
  }
};

// ✅ Add Remark to an Existing Query
exports.addRemark = async (id, remark) => {
  try {
    const [result] = await db.query(
      `UPDATE help_supports SET remark = ?, remark_date = NOW(), updatedAt = NOW() WHERE id = ?`,
      [remark, id]
    );

    return result.affectedRows > 0;
  } catch (error) {
    console.error("Error in addRemark:", error);
    throw error;
  }
};
