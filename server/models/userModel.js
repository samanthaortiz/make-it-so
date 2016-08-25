// This is Sam's
// var knex = require('knex')({client: 'mysql', connection: process.env.MYSQL_DATABASE_CONNECTION });
// var bookshelf = require('bookshelf')(knex);
var promise = require('bluebird');
var db = require('../db/index.js');

var User = db.Model.extend({
  tablename: 'Users',
  hasTimestamps: true;
});

module.exports(User);

