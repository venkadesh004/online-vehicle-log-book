const mongoose = require('mongoose');

const connectDB = async () => {
    const dbURL = "mongodb+srv://venkadesh:venkadesh@clusterpsg.ibzhvsg.mongodb.net/?retryWrites=true&w=majority";

    await mongoose.connect(dbURL,
        {
            useNewUrlParser: true,
            useUnifiedTopology: true
        },
        (err) => {
        if (err) {
            console.log(`Error connecting to MongoDB ${err.message}`);
            return
        } else {
            console.log('MongoDB connection succeeded');
            return
        }
    })
}

module.exports = connectDB;