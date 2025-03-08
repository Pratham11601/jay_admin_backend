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
 *     summary: Get all leads with pagination
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
 *     responses:
 *       200:
 *         description: Leads retrieved successfully
 *       400:
 *         description: Invalid query parameters
 *       500:
 *         description: Internal server error
 */
router.get("/", leadsController.getLeadsWithPagination);

/**
 * @swagger
 * /api/leads/search:
 *   get:
 *     summary: Search leads by any field
 *     tags: [Leads]
 *     parameters:
 *       - in: query
 *         name: term
 *         required: true
 *         schema:
 *           type: string
 *         description: "Search term"
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
 *         description: Search results retrieved successfully
 *       400:
 *         description: Invalid query parameters
 *       500:
 *         description: Internal server error
 */
router.get("/search", leadsController.searchLeads);

/**
 * @swagger
 * /api/leads/filter/received:
 *   get:
 *     summary: Filter leads by received date
 *     tags: [Leads]
 *     parameters:
 *       - in: query
 *         name: date
 *         required: true
 *         schema:
 *           type: string
 *           format: date
 *         description: "Filter by received date (YYYY-MM-DD)"
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
 *         description: Leads filtered successfully
 *       400:
 *         description: Invalid query parameters
 *       500:
 *         description: Internal server error
 */
router.get("/filter/received", leadsController.filterByReceivedDate);

/**
 * @swagger
 * /api/leads/filter/trip:
 *   get:
 *     summary: Filter leads by trip date
 *     tags: [Leads]
 *     parameters:
 *       - in: query
 *         name: date
 *         required: true
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
 *         description: Leads filtered successfully
 *       400:
 *         description: Invalid query parameters
 *       500:
 *         description: Internal server error
 */
router.get("/filter/trip", leadsController.filterByTripDate);

/**
 * @swagger
 * /api/leads/{id}:
 *   get:
 *     summary: Get a lead by ID
 *     tags: [Leads]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *         description: ID of the lead to retrieve
 *     responses:
 *       200:
 *         description: Lead retrieved successfully
 *       404:
 *         description: Lead not found
 *       500:
 *         description: Internal server error
 */
router.get("/:id", leadsController.getLeadById);

/**
 * @swagger
 * /api/leads/{id}:
 *   put:
 *     summary: Update a lead by ID
 *     tags: [Leads]
 *     parameters:
 *       - in: path
 *         name: id
 *         required: true
 *         schema:
 *           type: integer
 *         description: ID of the lead to update
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             $ref: '#/components/schemas/Leads'
 *     responses:
 *       200:
 *         description: Lead updated successfully
 *       404:
 *         description: Lead not found
 *       500:
 *         description: Internal server error
 */
router.put("/:id", leadsController.updateLead);

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
router.delete("/:id", (req, res, next) => {
  const leadId = req.params.id;
  if (!/^\d+$/.test(leadId)) {
    return res.status(400).json({
      success: false,
      message: "Invalid lead ID format. ID must be a number.",
    });
  }
  next();
}, leadsController.deleteLead);

module.exports = router;