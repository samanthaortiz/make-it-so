// This is Sam's
var dbConfig = require('db.config');

var knex = require('knex')({
  client: 'mysql',
  connection: {
    host     : dbConfig.ip,
    user     : dbConfig.username,
    password : dbConfig.password,
    database : dbConfig.name,
    charset  : 'utf8'
  }
});

var bookshelf = require('bookshelf')(knex);

var User = bookshelf.Model.extend({
  tableName: 'users'
});