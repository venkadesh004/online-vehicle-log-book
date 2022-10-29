const Vehicles = require('../models/vehicles');

const getVehicle = (req, res) => {
    const vehicle = req.body;  

    Vehicles.findOne({
        vehicleNumber: vehicle.vehicleNumber
    }).then((data) => {
        res.send(data);
    });
}

const addVehicles = async (req, res) => {
    const vehicle = req.body;
    
    const vehicleDetails = {
        vehicleNumber: vehicle.vehicleNumber,
        vehicleManufactureCompany: vehicle.vehicleManufactureCompany,
        vehicleModel: vehicle.vehicleModel,
        vehicleEngineModel: vehicle.vehicleEngineModel,
        vehiclecc: vehicle.vehiclecc,
        vehiclePastServicesAndChanges: vehicle.vehiclePastServicesAndChanges
    };
    
    const addVehicles = Vehicles(vehicleDetails);

    await addVehicles.save((err) => {
        if (err) {
            res.send(err);
        } else {
            res.status(200).send("Vehicle saved successfully");
        }
    })
}

const updateVehicles = async (req, res) => {
    const vehicle = req.body;

    const vehicleDetails = await Vehicles.findOne({
        vehicleNumber: vehicle.vehicleNumber
    }).exec();

    var vehiclePastServicesAndChangesNew = vehicleDetails.vehiclePastServicesAndChanges;

    var array = vehicle.newChange;

    for(var i=0; i<array.length; i++) {
        vehiclePastServicesAndChangesNew.push(array[i]);
    }

    await Vehicles.findOneAndUpdate({
        vehicleNumber: vehicle.vehicleNumber,    
    }, {
        vehiclePastServicesAndChanges: vehiclePastServicesAndChangesNew
    });

    res.send(vehicleDetails);
}

module.exports.getVehicle = getVehicle;
module.exports.addVehicles = addVehicles;
module.exports.updateVehicles = updateVehicles;