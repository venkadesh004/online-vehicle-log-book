const Services = require('../models/service');

const getService = (req, res) => {
    const service = req.body;  

    Services.findOne({
        userName: service.userName
    }).then((data) => {
        if (data.password == service.password) {
            res.send(true);
        } else {
            res.send(false);
        }
    });
}

const addService = async (req, res) => {
    const user = req.body;
    
    const serviceDetails = {
        centerName: user.centerName,
        address: user.address,
        number: user.number,
        ownerName: user.ownerName,
        userName: user.userName,
        password: user.password
    };

    var flag = 1;

    await Services.findOne({
        userName: serviceDetails.userName
    }).then((data) => {
        if (data == null) {
            flag = 0;
        }
    }); 

    if (flag == 1) {
        res.send("User already exist");
    } else {
        const addService = Services(serviceDetails);

        await addService.save((err) => {
            if (err) {
                res.send(err);
            } else {
                res.status(200).send("Service saved successfully");
            }
        })
    }
}

module.exports.getService = getService;
module.exports.addService = addService;