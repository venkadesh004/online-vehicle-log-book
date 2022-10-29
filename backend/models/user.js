const mongoose = require('mongoose');

const User = new mongoose.Schema({
    fullName: {
        type: String,
        required: true
    },
    age: {
        type: Number,
        required: true,
    },
    gender: {
        type: Boolean,
        required: true
    },
    contactNumber: {
        type: String,
        required: true
    },
    address: {
        type: String,
        required: true,
    },
    bGroup: {
        type: String,
        required: true,
    },
    email: {
        type: String,
        required: true,
    },
    password: {
        type: String,
        required: true,
    },
    userID: {
        type: String,
        required: true
    }
});

const Users = mongoose.model("Users", User);

module.exports = Users;