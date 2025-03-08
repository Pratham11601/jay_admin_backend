const express = require("express");
const router = express.Router();
const leadsController = require("../controllers/leadsController");

/**
 * @swagger
 * tags:
 *   name: Leads
 *   description: API endpoints for managing leads
 */

/**
 * @swagger
 * /api/leads:
 *   post:
 *     summary: Add a new lead
 *     tags: [Leads]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             $ref: '#/components/schemas/Leads'
 *     responses:
 *       201:
 *         description: Lead added successfully
 *       400:
 *         description: Invalid request body
 *       500:
 *         description: Internal server error
 */
router.post("/", leadsController.createLead);

/**
 * @swagger
 * /api/leads:
 *   get:
 *     summary: Get all leads with pagination, search, and filters
 *     tags: [Leads]
 *     parameters:
 *       - in: query
 *         name: page
 *         schema:
 *           type: integer
 *         description: "Page number (default: 1)"
 *       - in: query
 *         name: limit
 *         schema:
 *           type: integer
 *         description: "Number of results per page (default: 10)"
 *       - in: query
 *         name: search
 *         schema:
 *           type: string
 *         description: "Search query (vendor name, location, etc.)"
 *       - in: query
 *         name: receivedOn
 *         schema:
 *           type: string
 *           format: date
 *         description: "Filter by received on date (YYYY-MM-DD)"
 *       - in: query
 *         name: tripDate
 *         schema:
 *           type: string
 *           format: date
 *         description: "Filter by trip date (YYYY-MM-DD)"
 *     responses:
 *       200:
 *         description: Leads retrieved successfully
 *       400:
 *         description: Invalid query parameters
 *       500:
 *         description: Internal server error
 */
router.get("/", leadsController.getLeads);

/**
 * @swagger
 * /api/leads/search:
 *   get:
 *     summary: Search leads by any column with pagination
 *     tags: [Leads]
 *     parameters:
 *       - in: query
 *         name: search
 *         schema:
 *           type: string
 *         description: "Search term (vendor name, location, etc.)"
 *       - in: query
 *         name: page
 *         schema:
 *           type: integer
 *         description: "Page number (default: 1)"
 *       - in: query
 *         name: limit
 *         schema:
 *           type: integer
 *         description: "Number of results per page (default: 10)"
 *     responses:
 *       200:
 *         description: Leads retrieved successfully
 *       400:
 *         description: Invalid query parameters
 *       500:
 *         description: Internal server error
 */
router.get("/search", leadsController.searchLeads);

/**
 * @swagger
 * /api/leads/filter:
 *   get:
 *     summary: Filter leads by received_on and trip_date with pagination
 *     tags: [Leads]
 *     parameters:
 *       - in: query
 *         name: receivedOn
 *         schema:
 *           type: string
 *           format: date
 *         description: "Filter by received on date (YYYY-MM-DD)"
 *       - in: query
 *         name: tripDate
 *         schema:
 *           type: string
 *           format: date
 *         description: "Filter by trip date (YYYY-MM-DD)"
 *       - in: query
 *         name: page
 *         schema:
 *           type: integer
 *         description: "Page number (default: 1)"
 *       - in: query
 *         name: limit
 *         schema:
 *           type: integer
 *         description: "Number of results per page (default: 10)"
 *     responses:
 *       200:
 *         description: Leads retrieved successfully
 *       400:
 *         description: Invalid query parameters
 *       500:
 *         description: Internal server error
 */
router.get("/filter", leadsController.filterLeads);

/**
 * Middleware: Validate Lead ID
 * Ensures ID is a valid number before processing the request.
 */
const validateLeadId = (req, res, next) => {
  const leadId = req.params.id;
  if (!/^\d+$/.test(leadId)) {
    return res.status(400).json({
      success: false,
      message: "Invalid lead ID format. ID must be a number.",
    });
  }
  next();
};

/**
 * @swagger
 * /api/leads/{id}:
 *   delete:
 *     summary: Delete a lead by ID
 *     tags: [Leads]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *         description: ID of the lead to delete
 *     responses:
 *       200:
 *         description: Lead deleted successfully
 *       400:
 *         description: Invalid lead ID
 *       404:
 *         description: Lead not found
 *       500:
 *         description: Internal server error
 */
router.delete("/:id", validateLeadId, leadsController.deleteLead);

module.exports = router;
