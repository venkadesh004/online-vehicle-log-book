const express = require('express');
const Router = express.Router();

const {addService, getService} = require('../controllers/serviceControllers');

Router.route('/getService').get(getService);
Router.route('/addService').post(addService);

module.exports = Router;