const db = require("../config/db");

class Vendor {
  // Get all vendors with pagination
  static async getAllWithPagination(limit, offset) {
    const [rows] = await db.execute(
      "SELECT * FROM vendordetails ORDER BY createdAt DESC LIMIT ?, ?",
      [offset, limit]
    );

    const [[{ total }]] = await db.execute("SELECT COUNT(*) as total FROM vendordetails");
    return { total, vendors: rows };
  }

  // Get all vendors
  static async getAll() {
    const [rows] = await db.execute("SELECT * FROM vendordetails ORDER BY createdAt DESC");
    return rows;
  }

  // Get vendor by ID
  static async getById(id) {
    const [rows] = await db.execute("SELECT * FROM vendordetails WHERE id = ?", [id]);
    return rows[0] || null;
  }

  // **FIXED: Update vendor status**
  static async updateVendor(id, status) {
    try {
      const query = `
        UPDATE vendordetails 
        SET status = ?, updatedAt = NOW() 
        WHERE id = ?`;

      const values = [status, id];

      const [result] = await db.execute(query, values);
      return result;
    } catch (error) {
      console.error("Error updating vendor status:", error);
      throw error;
    }
  }

  // Search vendor by any column
  static async search(query) {
    const searchQuery = `%${query}%`;
    const [rows] = await db.execute(
      `SELECT * FROM vendordetails 
       WHERE fullname LIKE ? OR email LIKE ? OR phone LIKE ? OR businessName LIKE ? OR vendor_cat LIKE ?`,
      [searchQuery, searchQuery, searchQuery, searchQuery, searchQuery]
    );
    return rows;
  }

  // Add a new vendor
  static async addVendor(vendorData) {
    const query = `
      INSERT INTO vendordetails 
      (fullname, vendor_cat, phone, aadhaar_number, email, password, 
       profileImgUrl, documentImgUrl, licenseImgUrl, currentAddress, 
       pin_code, carnumber, vendor_gender, subscriptionPlan, subscription_date, 
       businessName, city, status, createdAt, updatedAt)
      VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NOW(), NOW())`;

    const values = [
      vendorData.fullname, vendorData.vendor_cat, vendorData.phone, vendorData.aadhaar_number,
      vendorData.email, vendorData.password, vendorData.profileImgUrl, vendorData.documentImgUrl,
      vendorData.licenseImgUrl, vendorData.currentAddress, vendorData.pin_code, vendorData.carnumber,
      vendorData.vendor_gender, vendorData.subscriptionPlan, vendorData.subscription_date,
      vendorData.businessName, vendorData.city, vendorData.status || 0
    ];

    const [result] = await db.execute(query, values);
    return result.insertId;
  }

  // Delete vendor by ID
  static async deleteById(id) {
    const [result] = await db.execute("DELETE FROM vendordetails WHERE id = ?", [id]);
    return result.affectedRows > 0;
  }
}

module.exports = Vendor;
