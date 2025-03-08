const Leads = require("../models/leadsModel");

// Create a new lead
exports.createLead = async (req, res) => {
  try {
    const lead = await Leads.create(req.body);
    res.status(201).json({ success: true, message: "Lead added successfully", data: lead });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
};

// Get all leads with pagination only (no filters)
exports.getLeadsWithPagination = async (req, res) => {
  try {
    const { page = 1, limit = 10 } = req.query;
    
    // Validate numeric inputs
    const pageNum = parseInt(page);
    const limitNum = parseInt(limit);
    
    if (isNaN(pageNum) || isNaN(limitNum) || pageNum < 1 || limitNum < 1) {
      return res.status(400).json({ 
        success: false, 
        message: "Invalid page or limit parameters. Both must be positive numbers."
      });
    }
    
    const result = await Leads.getAllWithPagination(pageNum, limitNum);
    
    res.status(200).json({
      success: true,
      message: "Leads retrieved successfully",
      data: result.leads,
      pagination: {
        totalPages: result.totalPages,
        currentPage: result.currentPage,
        totalCount: result.totalCount
      }
    });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
};

// Search leads
exports.searchLeads = async (req, res) => {
  try {
    const { term, page = 1, limit = 10 } = req.query;
    
    if (!term) {
      return res.status(400).json({ 
        success: false, 
        message: "Search term is required."
      });
    }
    
    // Validate numeric inputs
    const pageNum = parseInt(page);
    const limitNum = parseInt(limit);
    
    if (isNaN(pageNum) || isNaN(limitNum) || pageNum < 1 || limitNum < 1) {
      return res.status(400).json({ 
        success: false, 
        message: "Invalid page or limit parameters. Both must be positive numbers."
      });
    }
    
    const result = await Leads.searchLeads(term, pageNum, limitNum);
    
    res.status(200).json({
      success: true,
      message: "Search results retrieved successfully",
      data: result.leads,
      pagination: {
        totalPages: result.totalPages,
        currentPage: result.currentPage,
        totalCount: result.totalCount
      }
    });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
};

// Filter by received date
exports.filterByReceivedDate = async (req, res) => {
  try {
    const { date, page = 1, limit = 10 } = req.query;
    
    if (!date) {
      return res.status(400).json({ 
        success: false, 
        message: "Received date is required."
      });
    }
    
    // Validate numeric inputs
    const pageNum = parseInt(page);
    const limitNum = parseInt(limit);
    
    if (isNaN(pageNum) || isNaN(limitNum) || pageNum < 1 || limitNum < 1) {
      return res.status(400).json({ 
        success: false, 
        message: "Invalid page or limit parameters. Both must be positive numbers."
      });
    }
    
    const result = await Leads.filterByReceivedDate(date, pageNum, limitNum);
    
    res.status(200).json({
      success: true,
      message: "Leads filtered by received date successfully",
      data: result.leads,
      pagination: {
        totalPages: result.totalPages,
        currentPage: result.currentPage,
        totalCount: result.totalCount
      }
    });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
};

// Filter by trip date
exports.filterByTripDate = async (req, res) => {
  try {
    const { date, page = 1, limit = 10 } = req.query;
    
    if (!date) {
      return res.status(400).json({ 
        success: false, 
        message: "Trip date is required."
      });
    }
    
    // Validate numeric inputs
    const pageNum = parseInt(page);
    const limitNum = parseInt(limit);
    
    if (isNaN(pageNum) || isNaN(limitNum) || pageNum < 1 || limitNum < 1) {
      return res.status(400).json({ 
        success: false, 
        message: "Invalid page or limit parameters. Both must be positive numbers."
      });
    }
    
    const result = await Leads.filterByTripDate(date, pageNum, limitNum);
    
    res.status(200).json({
      success: true,
      message: "Leads filtered by trip date successfully",
      data: result.leads,
      pagination: {
        totalPages: result.totalPages,
        currentPage: result.currentPage,
        totalCount: result.totalCount
      }
    });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
};

// Get lead by ID
exports.getLeadById = async (req, res) => {
  try {
    const lead = await Leads.getById(req.params.id);
    if (!lead) {
      return res.status(404).json({ success: false, message: "Lead not found" });
    }
    res.status(200).json({ success: true, message: "Lead retrieved successfully", data: lead });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
};

// Update lead
exports.updateLead = async (req, res) => {
  try {
    const result = await Leads.update(req.params.id, req.body);
    if (!result) {
      return res.status(404).json({ success: false, message: "Lead not found or no changes made" });
    }
    res.status(200).json({ success: true, message: "Lead updated successfully" });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
};

// Delete lead
exports.deleteLead = async (req, res) => {
  try {
    const result = await Leads.delete(req.params.id);
    if (!result) {
      return res.status(404).json({ success: false, message: "Lead not found" });
    }
    res.status(200).json({ success: true, message: "Lead deleted successfully" });
  } catch (error) {
    res.status(500).json({ success: false, message: error.message });
  }
};