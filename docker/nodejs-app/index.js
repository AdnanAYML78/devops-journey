import express from "express";

const app = express();
const PORT = process.env.PORT || 3000;

// Route
app.get("/", (req, res) => {
  res.send("Hello from Dockerized Node.js 🚀");
});

// Listen on all interfaces (important for Docker)
app.listen(PORT, "0.0.0.0", () => {
  console.log(`Server listening on port ${PORT}`);
});
