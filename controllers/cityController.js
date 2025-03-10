const cityModel = require("../models/cityModel");

exports.getAllCities = async (req, res) => {
  try {
    const search = req.query.search ? req.query.search.trim() : "";
    const page = parseInt(req.query.page) > 0 ? parseInt(req.query.page) : 1;
    const limit = parseInt(req.query.limit) > 0 ? parseInt(req.query.limit) : 10;

    const result = await cityModel.getAllCities(search, page, limit);

    return res.status(200).json({
      success: true,
      total: result.total,
      page,
      limit,
      data: result.cities,
    });
  } catch (error) {
    console.error("❌ Error fetching cities:", error);
    return res.status(500).json({
      success: false,
      message: "Error fetching cities",
      error: error.message,
    });
  }
};

// Get all cities without pagination
exports.getAllCitiesWithoutPagination = async (req, res) => {
  try {
    const cities = await cityModel.getAllCitiesWithoutPagination();
    
    return res.status(200).json({
      success: true,
      count: cities.length,
      data: cities,
    });
  } catch (error) {
    console.error("❌ Error fetching all cities:", error);
    return res.status(500).json({
      success: false,
      message: "Error fetching all cities",
      error: error.message,
    });
  }
};

// Get city by ID
exports.getCityById = async (req, res) => {
  try {
    const { city_id } = req.params;
    if (!city_id) return res.status(400).json({ success: false, message: "City ID is required" });

    const city = await cityModel.getCityById(city_id);
    if (!city) return res.status(404).json({ success: false, message: "City not found" });

    res.json({ success: true, data: city });
  } catch (error) {
    res.status(500).json({ success: false, message: "Error fetching city", error: error.message });
  }
};

// Add a new city
exports.addCity = async (req, res) => {
  try {
    const { city_name, state_name } = req.body;
    if (!city_name || !state_name) return res.status(400).json({ success: false, message: "City name and state name are required" });

    const city = await cityModel.addCity(city_name, state_name);
    res.status(201).json({ success: true, message: "City added successfully", city_id: city.city_id });
  } catch (error) {
    res.status(500).json({ success: false, message: "Error adding city", error: error.message });
  }
};

// Update city details
exports.updateCity = async (req, res) => {
  try {
    const { city_id } = req.params;
    const { city_name, state_name } = req.body;
    if (!city_id || !city_name || !state_name) return res.status(400).json({ success: false, message: "City ID, name, and state are required" });

    const updated = await cityModel.updateCity(city_id, city_name, state_name);
    if (!updated) return res.status(404).json({ success: false, message: "City not found or no changes made" });

    res.json({ success: true, message: "City updated successfully" });
  } catch (error) {
    res.status(500).json({ success: false, message: "Error updating city", error: error.message });
  }
};

// Delete city by ID
exports.deleteCity = async (req, res) => {
  try {
    const { city_id } = req.params;
    if (!city_id) return res.status(400).json({ success: false, message: "City ID is required" });

    const deleted = await cityModel.deleteCity(city_id);
    if (!deleted) return res.status(404).json({ success: false, message: "City not found" });

    res.json({ success: true, message: "City deleted successfully" });
  } catch (error) {
    res.status(500).json({ success: false, message: "Error deleting city", error: error.message });
  }
};