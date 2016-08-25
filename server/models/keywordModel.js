var db = require('../db/index.js');

var Keyword = db.Model.extend({
  tableName: 'Keywords',
  hasTimestamps: false,
});

module.exports = Keyword;
