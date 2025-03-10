const db = require("../config/db");

exports.getAllCategories = async (req, res) => {
  try {
    let { search, page, limit } = req.query;

    // Ensure page and limit are integers
    page = parseInt(page) || 1;
    limit = parseInt(limit) || 10;
    const offset = (page - 1) * limit;

    // First, get the total count
    let countSql = "SELECT COUNT(*) as total FROM category";
    let countParams = [];
    
    if (search) {
      countSql += " WHERE cat_name LIKE ?";
      countParams.push(`%${search}%`);
    }
    
    const [countResult] = await db.execute(countSql, countParams);
    const total = countResult[0].total;

    // Then get the actual data with paging
    let dataSql = "SELECT * FROM category";
    let dataParams = [];

    if (search) {
      dataSql += " WHERE cat_name LIKE ?";
      dataParams.push(`%${search}%`);
    }

    // Important: For MySQL prepared statements, LIMIT parameters must be integers
    // Adding ORDER BY to sort by ID descending
    dataSql += " ORDER BY id DESC";
    
    // Handle pagination differently to avoid MySQL statement parameter issues
    if (page && limit) {
      // Using prepared statement with placeholder values directly as integers, not via parameters
      // This avoids the type conversion issues with MySQL's prepared statements
      dataSql += ` LIMIT ${offset}, ${limit}`;
    }

    const [categories] = await db.execute(dataSql, dataParams);

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