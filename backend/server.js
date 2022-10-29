const express = require('express');
const connectDB = require('./db/db');

const userRoutes = require('./routes/userRoutes');
const serviceRoutes = require('./routes/serviceRoutes');
const vehicleRoutes = require('./routes/vehicleRoutes');

const bodyParser = require('body-parser');

const app = express();

connectDB();

app.use(bodyParser.json());

app.use('/user', userRoutes);
app.use('/service', serviceRoutes);
app.use('/vehicles', vehicleRoutes);

const PORT = process.env.PORT || 5000;

app.listen(PORT, () => {
    console.log("Server started!");
})