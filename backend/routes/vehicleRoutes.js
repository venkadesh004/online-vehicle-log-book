const express = require('express');
const Router = express.Router();

const {addVehicles, getVehicle, updateVehicles} = require('../controllers/vehicleControllers');

Router.route('/getVehicle').get(getVehicle);
Router.route('/addVehicles').post(addVehicles);
Router.route('/updateVehicle').put(updateVehicles);

module.exports = Router;