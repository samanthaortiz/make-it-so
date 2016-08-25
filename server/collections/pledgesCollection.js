var db = require('../db/db.config');
var Pledge = require('../models/pledgesModel');

var Pledges = new db.Collection();

Pledges.model = Pledge;

module.exports = Pledges;

