const db = require("../config/db"); // Ensure correct DB connection

// Get all categories with pagination
exports.getAllCategories = async (req, res) => {
  try {
    let { search, page, limit } = req.query;

    // Convert page & limit to numbers and set default values
    page = parseInt(page) || 1;
    limit = parseInt(limit) || 10;
    const offset = (page - 1) * limit;

    let sql = "SELECT * FROM categories";
    let params = [];

    if (search) {
      sql += " WHERE cat_name LIKE ?";
      params.push(`%${search}%`);
    }

    sql += " LIMIT ?, ?";
    params.push(offset, limit); // Ensure limit and offset are integers

    console.log("SQL Query:", sql);
    console.log("Query Params:", params);

    const [categories] = await db.execute(sql, params);

    // Get total count of categories
    const countQuery = "SELECT COUNT(*) as total FROM categories";
    const [countResult] = await db.execute(countQuery);
    const total = countResult[0].total;

    res.json({
      success: true,
      total,
      page,
      limit,
      totalPages: Math.ceil(total / limit),
      data: categories,
    });
  } catch (error) {
    console.error("Error fetching categories:", error);
    res.status(500).json({
      success: false,
      message: "Error fetching categories",
      error: error.message,
    });
  }
};

// Get category by ID
exports.getCategoryById = async (req, res) => {
  try {
    const { id } = req.params;
    const sql = "SELECT * FROM categories WHERE id = ?";
    const [category] = await db.execute(sql, [id]);

    if (category.length === 0) {
      return res.status(404).json({ success: false, message: "Category not found" });
    }

    res.json({ success: true, data: category[0] });
  } catch (error) {
    console.error("Error fetching category:", error);
    res.status(500).json({ success: false, message: "Error fetching category", error: error.message });
  }
};

// Create a new category
exports.createCategory = async (req, res) => {
  try {
    const { cat_name } = req.body;
    if (!cat_name) {
      return res.status(400).json({ success: false, message: "Category name is required" });
    }

    const sql = "INSERT INTO categories (cat_name) VALUES (?)";
    const [result] = await db.execute(sql, [cat_name]);

    res.status(201).json({ success: true, message: "Category created successfully", id: result.insertId });
  } catch (error) {
    console.error("Error creating category:", error);
    res.status(500).json({ success: false, message: "Error creating category", error: error.message });
  }
};

// Update category by ID
exports.updateCategory = async (req, res) => {
  try {
    const { id } = req.params;
    const { cat_name } = req.body;

    const sql = "UPDATE categories SET cat_name = ? WHERE id = ?";
    const [result] = await db.execute(sql, [cat_name, id]);

    if (result.affectedRows === 0) {
      return res.status(404).json({ success: false, message: "Category not found" });
    }

    res.json({ success: true, message: "Category updated successfully" });
  } catch (error) {
    console.error("Error updating category:", error);
    res.status(500).json({ success: false, message: "Error updating category", error: error.message });
  }
};

// Delete category by ID
exports.deleteCategory = async (req, res) => {
  try {
    const { id } = req.params;
    const sql = "DELETE FROM categories WHERE id = ?";
    const [result] = await db.execute(sql, [id]);

    if (result.affectedRows === 0) {
      return res.status(404).json({ success: false, message: "Category not found" });
    }

    res.json({ success: true, message: "Category deleted successfully" });
  } catch (error) {
    console.error("Error deleting category:", error);
    res.status(500).json({ success: false, message: "Error deleting category", error: error.message });
  }
};
