const db = require("../config/db");

class Category {
  static async getAll(search, page, limit) {
    try {
      page = parseInt(page) || 1;
      limit = parseInt(limit) || 10;
      const offset = (page - 1) * limit;

      let sql = "SELECT * FROM category";
      let params = [];

      if (search) {
        sql += " WHERE cat_name LIKE ?";
        params.push(`%${search}%`);
      }

      sql += " ORDER BY id DESC LIMIT ?, ?";
      params.push(Number(offset), Number(limit));

      const [categories] = await db.execute(sql, params);
      return categories;
    } catch (error) {
      throw new Error(error.message);
    }
  }

  static async getCount(search) {
    try {
      let sql = "SELECT COUNT(*) as total FROM category";
      let params = [];

      if (search) {
        sql += " WHERE cat_name LIKE ?";
        params.push(`%${search}%`);
      }

      const [result] = await db.execute(sql, params);
      return result[0].total;
    } catch (error) {
      throw new Error(error.message);
    }
  }

  static async getById(id) {
    try {
      const sql = "SELECT * FROM category WHERE id = ?";
      const [category] = await db.execute(sql, [id]);
      return category.length > 0 ? category[0] : null;
    } catch (error) {
      throw new Error(error.message);
    }
  }

  static async create(cat_name) {
    try {
      const sql = "INSERT INTO category (cat_name) VALUES (?)";
      const [result] = await db.execute(sql, [cat_name]);
      return result.insertId;
    } catch (error) {
      throw new Error(error.message);
    }
  }

  static async update(id, cat_name) {
    try {
      const sql = "UPDATE category SET cat_name = ? WHERE id = ?";
      const [result] = await db.execute(sql, [cat_name, id]);
      return result.affectedRows > 0;
    } catch (error) {
      throw new Error(error.message);
    }
  }

  static async delete(id) {
    try {
      const sql = "DELETE FROM category WHERE id = ?";
      const [result] = await db.execute(sql, [id]);
      return result.affectedRows > 0;
    } catch (error) {
      throw new Error(error.message);
    }
  }
}

module.exports = Category;