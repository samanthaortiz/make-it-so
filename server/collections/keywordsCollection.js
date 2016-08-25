var db = require('../db/db.config');
var Keyword = require('../models/keywordModel');

var Keywords = new db.Collection();

Keywords.model = Keyword;

module.exports = Keywords;

