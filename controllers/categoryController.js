const db = require("../config/db");

exports.getAllCategories = async (req, res) => {
  try {
    let { search, page, limit } = req.query;

    page = parseInt(page) || 1;
    limit = parseInt(limit) || 10;
    const offset = (page - 1) * limit;

    // Count total records first
    let countSql = "SELECT COUNT(*) as total FROM category";
    let countParams = [];
    
    if (search) {
      countSql += " WHERE cat_name LIKE ?";
      countParams.push(`%${search}%`);
    }
    
    const [countResult] = await db.execute(countSql, countParams);
    const total = countResult[0].total;

    // Then get paginated data
    let sql = "SELECT * FROM category";
    let params = [];

    if (search) {
      sql += " WHERE cat_name LIKE ?";
      params.push(`%${search}%`);
    }

    sql += " ORDER BY id DESC LIMIT ?, ?";
    // Convert offset and limit to integers to avoid MySQL statement errors
    params.push(Number(offset), Number(limit));

    const [categories] = await db.execute(sql, params);

    res.json({
      success: true,
      total,
      page,
      limit,
      totalPages: Math.ceil(total / limit),
      data: categories,
    });
  } catch (error) {
    console.error("Database error:", error);
    res.status(500).json({ 
      success: false, 
      message: "Error fetching categories", 
      error: error.message 
    });
  }
};

exports.getCategoryById = async (req, res) => {
  try {
    const { id } = req.params;
    const sql = "SELECT * FROM category WHERE id = ?";
    const [category] = await db.execute(sql, [id]);

    if (category.length === 0) {
      return res.status(404).json({ success: false, message: "Category not found" });
    }

    res.json({ success: true, data: category[0] });
  } catch (error) {
    res.status(500).json({ success: false, message: "Error fetching category", error: error.message });
  }
};

exports.createCategory = async (req, res) => {
  try {
    const { cat_name } = req.body;
    if (!cat_name) {
      return res.status(400).json({ success: false, message: "Category name is required" });
    }

    const sql = "INSERT INTO category (cat_name) VALUES (?)";
    const [result] = await db.execute(sql, [cat_name]);

    res.status(201).json({ success: true, message: "Category created successfully", id: result.insertId });
  } catch (error) {
    res.status(500).json({ success: false, message: "Error creating category", error: error.message });
  }
};

exports.updateCategory = async (req, res) => {
  try {
    const { id } = req.params;
    const { cat_name } = req.body;

    if (!cat_name) {
      return res.status(400).json({ success: false, message: "Category name is required" });
    }

    const sql = "UPDATE category SET cat_name = ? WHERE id = ?";
    const [result] = await db.execute(sql, [cat_name, id]);

    if (result.affectedRows === 0) {
      return res.status(404).json({ success: false, message: "Category not found" });
    }

    res.json({ success: true, message: "Category updated successfully" });
  } catch (error) {
    res.status(500).json({ success: false, message: "Error updating category", error: error.message });
  }
};

exports.deleteCategory = async (req, res) => {
  try {
    const { id } = req.params;
    const sql = "DELETE FROM category WHERE id = ?";
    const [result] = await db.execute(sql, [id]);

    if (result.affectedRows === 0) {
      return res.status(404).json({ success: false, message: "Category not found" });
    }

    res.json({ success: true, message: "Category deleted successfully" });
  } catch (error) {
    res.status(500).json({ success: false, message: "Error deleting category", error: error.message });
  }
};