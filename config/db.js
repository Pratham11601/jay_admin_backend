const mysql = require("mysql2/promise"); // Use mysql2's promise-based API




const pool = mysql.createPool({
  host: "127.0.0.1",
  user:  "root",
  password:  "Sync@116",
  database:  "sync_quickcab_db",
  connectionLimit: 10, // Max concurrent connections
  queueLimit: 0, // No limit for queued connections
});

// Test database connection
(async () => {
  try {
    const connection = await pool.getConnection();
    console.log("✅ Database connected successfully!");
    connection.release(); // Release connection back to the pool
  } catch (error) {
    console.error("❌ Database connection failed:", error);
    process.exit(1); // Exit process if the database connection fails
  }
})();

// Handle pool errors globally
pool.on("error", (err) => {
  console.error("🔥 MySQL Pool Error:", err.message);
  process.exit(1); // Exit process to avoid unexpected behavior
});

module.exports = pool;
