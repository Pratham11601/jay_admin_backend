const express = require("express");
const router = express.Router();
const leadsController = require("../controllers/leadsController");

/**
 * @swagger
 * components:
 *   schemas:
 *     Lead:
 *       type: object
 *       required:
 *         - vendor_name
 *         - date
 *         - location_from
 *         - to_location
 *         - vendor_contact
 *       properties:
 *         id:
 *           type: integer
 *           description: Auto-generated ID of the lead
 *         date:
 *           type: string
 *           format: date
 *           description: Date of the trip
 *         vendor_id:
 *           type: integer
 *           description: ID of the vendor
 *         vendor_name:
 *           type: string
 *           description: Name of the vendor
 *         location_from:
 *           type: string
 *           description: Starting location
 *         location_from_area:
 *           type: string
 *           description: Area of starting location
 *         car_model:
 *           type: string
 *           description: Car model for the trip
 *         add_on:
 *           type: string
 *           description: Additional services
 *         fare:
 *           type: number
 *           description: Fare amount
 *         to_location:
 *           type: string
 *           description: Destination location
 *         to_location_area:
 *           type: string
 *           description: Area of destination location
 *         time:
 *           type: string
 *           description: Time of the trip
 *         vendor_contact:
 *           type: string
 *           description: Contact information of the vendor
 *         vendor_cat:
 *           type: string
 *           description: Vendor category
 *         createdAt:
 *           type: string
 *           format: date-time
 *           description: Date when the lead was created
 *         updatedAt:
 *           type: string
 *           format: date-time
 *           description: Date when the lead was last updated
 */

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
 *             $ref: '#/components/schemas/Lead'
 *     responses:
 *       201:
 *         description: Lead added successfully
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 success:
 *                   type: boolean
 *                   example: true
 *                 message:
 *                   type: string
 *                   example: Lead added successfully
 *                 data:
 *                   $ref: '#/components/schemas/Lead'
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
 *     summary: Get all leads with pagination, search and filtering
 *     tags: [Leads]
 *     parameters:
 *       - in: query
 *         name: page
 *         schema:
 *           type: integer
 *           default: 1
 *         description: Page number
 *       - in: query
 *         name: limit
 *         schema:
 *           type: integer
 *           default: 10
 *         description: Number of items per page
 *       - in: query
 *         name: search
 *         schema:
 *           type: string
 *         description: Search term for vendor name, contact, locations, etc.
 *       - in: query
 *         name: receivedOn
 *         schema:
 *           type: string
 *           format: date
 *         description: Filter by date when lead was created (YYYY-MM-DD)
 *       - in: query
 *         name: tripDate
 *         schema:
 *           type: string
 *           format: date
 *         description: Filter by trip date (YYYY-MM-DD)
 *     responses:
 *       200:
 *         description: Leads retrieved successfully
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 success:
 *                   type: boolean
 *                   example: true
 *                 message:
 *                   type: string
 *                   example: Leads retrieved successfully
 *                 data:
 *                   type: array
 *                   items:
 *                     $ref: '#/components/schemas/Lead'
 *                 pagination:
 *                   type: object
 *                   properties:
 *                     totalCount:
 *                       type: integer
 *                       example: 50
 *                     totalPages:
 *                       type: integer
 *                       example: 5
 *                     currentPage:
 *                       type: integer
 *                       example: 1
 *                     limit:
 *                       type: integer
 *                       example: 10
 *       400:
 *         description: Invalid query parameters
 *       500:
 *         description: Internal server error
 */
router.get("/", leadsController.getLeads);

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
 *         description: ID of the lead
 *     responses:
 *       200:
 *         description: Lead retrieved successfully
 *         content:
 *           application/json:
 *             schema:
 *               type: object
 *               properties:
 *                 success:
 *                   type: boolean
 *                   example: true
 *                 message:
 *                   type: string
 *                   example: Lead retrieved successfully
 *                 data:
 *                   $ref: '#/components/schemas/Lead'
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
 *     summary: Update a lead
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
 *             $ref: '#/components/schemas/Lead'
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