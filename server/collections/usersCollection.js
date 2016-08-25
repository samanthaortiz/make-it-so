var db = require('../db/db.config');
var User = require('../models/userModel');

var Users = new db.Collection();

Users.model = User;

module.exports = Users;

