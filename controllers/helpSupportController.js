const HelpSupport = require("../models/helpSupportModel");

/**
 * @swagger
 * /api/help-support:
 *   get:
 *     summary: Get all help support queries with pagination and search
 */
exports.getAllHelpSupport = async (req, res) => {
  try {
    const search = req.query.search || "";
    const page = parseInt(req.query.page, 10) || 1;
    const limit = parseInt(req.query.limit, 10) || 10;

    const { total, helpSupport } = await HelpSupport.getAll(search, page, limit);

    if (!helpSupport.length) {
      return res.status(404).json({ success: false, message: "No help support queries found" });
    }

    res.status(200).json({
      success: true,
      message: "Help support queries retrieved successfully",
      totalRecords: total,
      totalPages: Math.ceil(total / limit),
      currentPage: page,
      limit,
      data: helpSupport,
    });
  } catch (error) {
    console.error("Error in getAllHelpSupport:", error);
    res.status(500).json({ success: false, message: "Server error", error: error.message });
  }
};

/**
 * @swagger
 * /api/help-support/{id}:
 *   get:
 *     summary: Get a single help support query by ID
 */
exports.getHelpSupportById = async (req, res) => {
  try {
    const id = req.params.id;
    const helpSupport = await HelpSupport.getById(id);

    if (!helpSupport) {
      return res.status(404).json({ success: false, message: "Help support query not found" });
    }

    res.status(200).json({
      success: true,
      message: "Help support query retrieved successfully",
      data: helpSupport,
    });
  } catch (error) {
    console.error("Error in getHelpSupportById:", error);
    res.status(500).json({ success: false, message: "Server error", error: error.message });
  }
};

/**
 * @swagger
 * /api/help-support:
 *   post:
 *     summary: Add a new help support query
 */
exports.addHelpSupport = async (req, res) => {
  try {
    const helpSupportId = await HelpSupport.addHelpSupport(req.body);

    res.status(201).json({
      success: true,
      message: "Help support query added successfully",
      helpSupportId,
    });
  } catch (error) {
    console.error("Error in addHelpSupport:", error);
    res.status(500).json({ success: false, message: "Server error", error: error.message });
  }
};

/**
 * @swagger
 * /api/help-support/{id}:
 *   put:
 *     summary: Update a help support query
 */
exports.updateHelpSupport = async (req, res) => {
  try {
    const success = await HelpSupport.updateHelpSupport(req.params.id, req.body);

    if (!success) {
      return res.status(404).json({ success: false, message: "Help Support query not found or not updated" });
    }

    const updatedHelpSupport = await HelpSupport.getById(req.params.id);

    res.status(200).json({
      success: true,
      message: "Help support query updated successfully",
      data: updatedHelpSupport,
    });
  } catch (error) {
    console.error("Error in updateHelpSupport:", error);
    res.status(500).json({ success: false, message: "Server error", error: error.message });
  }
};

/**
 * @swagger
 * /api/help-support/{id}:
 *   delete:
 *     summary: Delete a help support query
 */
exports.deleteHelpSupport = async (req, res) => {
  try {
    const success = await HelpSupport.deleteById(req.params.id);

    if (!success) {
      return res.status(404).json({ success: false, message: "Help Support query not found" });
    }

    res.status(200).json({ success: true, message: "Help support query deleted successfully" });
  } catch (error) {
    console.error("Error in deleteHelpSupport:", error);
    res.status(500).json({ success: false, message: "Server error", error: error.message });
  }
};

/**
 * @swagger
 * /api/help-support/{id}/remark:
 *   post:
 *     summary: Add a remark to a help support query
 */
exports.addRemark = async (req, res) => {
  try {
    const { id } = req.params;
    const { remark, remark_date } = req.body;

    if (!remark || !remark_date) {
      return res.status(400).json({ success: false, message: "Remark and remark_date are required" });
    }

    const helpSupport = await HelpSupport.getById(id);
    if (!helpSupport) {
      return res.status(404).json({ success: false, message: "Help support query not found" });
    }

    const success = await HelpSupport.addRemark(id, remark, remark_date);
    if (!success) {
      return res.status(500).json({ success: false, message: "Failed to add remark" });
    }

    res.status(200).json({
      success: true,
      message: "Remark added successfully",
      data: { id, remark, remark_date },
    });
  } catch (error) {
    console.error("Error in addRemark:", error);
    res.status(500).json({ success: false, message: "Server error", error: error.message });
  }
};
