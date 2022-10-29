const mongoose = require('mongoose');

const Vehicle = new mongoose.Schema({
    vehicleNumber: {
        type: String,
        required: true,
    },
    vehicleManufactureCompany: {
        type: String,
        required: true,
    },
    vehicleModel: {
        type: String,
        required: true,
    },
    vehicleEngineModel: {
        type: String,
        required: true
    },
    vehiclecc: {
        type: String,
        required: true
    },
    vehiclePastServicesAndChanges: {
        type: Array,
        required: true
    }
});

const Vehicles = mongoose.model("Vehicles", Vehicle);

module.exports = Vehicles;