const Users = require('../models/user');

const getUser = (req, res) => {
    const user = req.body;  

    Users.findOne({
        userID: user.userID
    }).then((data) => {
        if (data.password == user.password) {
            res.send(true);
        } else {
            res.send(false);
        }
    });
}

const addUser = async (req, res) => {
    const user = req.body;
    
    const userDetails = {
        fullName: user.fullName,
        age: user.age,
        gender: user.gender,
        contactNumber: user.contactNumber,
        address: user.address,
        bGroup: user.bGroup,
        email: user.email,
        password: user.password,
        userID: user.userID
    };

    var flag = 1;

    await Users.findOne({
        userID: userDetails.userID
    }).then((data) => {
        if (data == null) {
            flag = 0;
        }
    }); 

    if (flag == 1) {
        res.send("User already exist");
    } else {
        const addUser = Users(userDetails);

        await addUser.save((err) => {
            if (err) {
                res.status(err.code).send(err.message);
            } else {
                res.status(200).send("User saved successfully");
            }
        })
    }
}

module.exports.getUser = getUser;
module.exports.addUser = addUser;