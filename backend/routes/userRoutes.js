const express = require('express');
const Router = express.Router();

const {addUser, getUser} = require('../controllers/userControllers');

Router.route('/getUser').get(getUser);
Router.route('/addUser').post(addUser);

module.exports = Router;