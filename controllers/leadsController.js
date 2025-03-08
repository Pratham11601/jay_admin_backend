const Leads = require("../models/leadsModel");

// ✅ Get all leads with pagination
exports.getAllLeads = (req, res) => {
  const { page = 1, limit = 10 } = req.query;

  Leads.getTotalLeadsCount((err, countResult) => {
    if (err) return res.status(500).json({ success: false, message: "Internal server error" });

    Leads.getAllLeads(page, limit, (err, results) => {
      if (err) return res.status(500).json({ success: false, message: "Internal server error" });

      res.json({
        success: true,
        data: results,
        totalCount: countResult[0].total,
        currentPage: page,
        totalPages: Math.ceil(countResult[0].total / limit),
      });
    });
  });
};

// ✅ Search leads with pagination
exports.searchLeads = (req, res) => {
  const { search, page = 1, limit = 10 } = req.query;

  if (!search) return res.status(400).json({ success: false, message: "Search term is required" });

  Leads.getSearchCount(search, (err, countResult) => {
    if (err) return res.status(500).json({ success: false, message: "Internal server error" });

    Leads.searchLeads(search, page, limit, (err, results) => {
      if (err) return res.status(500).json({ success: false, message: "Internal server error" });

      res.json({
        success: true,
        data: results,
        totalCount: countResult[0].total,
        currentPage: page,
        totalPages: Math.ceil(countResult[0].total / limit),
      });
    });
  });
};

// ✅ Filter leads with pagination
exports.filterLeads = (req, res) => {
  const { receivedOn, tripDate, page = 1, limit = 10 } = req.query;

  Leads.getFilterCount(receivedOn, tripDate, (err, countResult) => {
    if (err) return res.status(500).json({ success: false, message: "Internal server error" });

    Leads.filterLeads(receivedOn, tripDate, page, limit, (err, results) => {
      if (err) return res.status(500).json({ success: false, message: "Internal server error" });

      res.json({
        success: true,
        data: results,
        totalCount: countResult[0].total,
        currentPage: page,
        totalPages: Math.ceil(countResult[0].total / limit),
      });
    });
  });
};

// ✅ Delete a lead
exports.deleteLead = (req, res) => {
  const { id } = req.params;

  Leads.deleteLead(id, (err, result) => {
    if (err) return res.status(500).json({ success: false, message: "Internal server error" });

    if (result.affectedRows === 0) {
      return res.status(404).json({ success: false, message: "Lead not found" });
    }

    res.json({ success: true, message: "Lead deleted successfully" });
  });
};
