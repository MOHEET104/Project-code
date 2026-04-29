// Main server file - this is where everything starts
const express = require('express');
const cors = require('cors');
require('dotenv').config();

// Import our route files (we will create these next)
const teamsRoutes = require('./routes/teams');
const playersRoutes = require('./routes/players');
const matchesRoutes = require('./routes/matches');

// Create the express app
const app = express();

// Middleware - these run on every request
app.use(cors()); // Allows React frontend to connect
app.use(express.json()); // Allows us to read JSON data

// Routes - these handle different URLs
app.use('/api/teams', teamsRoutes);
app.use('/api/players', playersRoutes);
app.use('/api/matches', matchesRoutes);

// Home route - just to test server is running
app.get('/', (req, res) => {
    res.json({ message: 'Basketball Platform API is running!' });
});

// Start the server
const PORT = process.env.PORT || 5000;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
    console.log(`Visit: http://localhost:${PORT}`);
});