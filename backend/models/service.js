const mongoose = require('mongoose');

const Service = new mongoose.Schema({
    centerName: {
        type: String,
        required: true
    },
    address: {
        type: String,
        required: true,
    },
    number: {
        type: String,
        required: true
    },
    ownerName: {
        type: String,
        required: true,
    },
    userName: {
        type: String,
        required: true,
    },
    password: {
        type: String,
        required: true
    }
});

const Services = mongoose.model("Services", Service);

module.exports = Services;