require("dotenv").config();
const mongoose = require("mongoose");

const connection_uri= (host) => {
	return `mongodb://${host}:27017/MERN`;
};

module.exports = () => {
  const connection = mongoose
    .connect((connection_uri(process.env.MONGODB_HOST)), {
      useNewUrlParser: true, 
      useUnifiedTopology: true, 
    })
    .then((result) => console.log("Connected to database"))
    .catch((err) => console.log("Could not connect to database"));
};



