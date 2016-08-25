var db = require('../db/db.config');
var ProjectKeyword = require('../models/projectKeywordModel');

var ProjectKeywords = new db.Collection();

ProjectKeywords.model = ProjectKeyword;

module.exports = ProjectKeywords;

