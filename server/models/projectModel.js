var db = require('../db/index.js');

var Project = db.Model.extend({
  tableName: 'Projects',
  hasTimestamps: true,
});

module.exports = Project;
