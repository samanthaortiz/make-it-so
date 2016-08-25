// This is Sam's
var dbConfig = require('/db.config');
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

var db = require('bookshelf')(knex);

db.knex.schema.hasTable('Projects').then(function(exists){
  if(!exists){
    db.knex.schema.createTable('Projects', function(project){
      project.increments('id').primary();
      project.string('name');
      project.string('time_constraint');
      project.string('wanted');
      project.string('description');
      project.timestamps();
    }).then(function(table){
      console.log('Created Projects Table', table);
    });  
  }
});

db.knex.schema.hasTable('Pledges').then(function(exists){
  if(!exists){
    db.knex.schema.createTable('Pledges', function(pledge){
      pledge.increments('id').primary();
      pledge.integer('user_id');
      pledge.integer('project_id');
      pledge.integer('amount');
      pledge.timestamps();
    }).then(function(table){
      console.log('Created Pledges Table', table);
    });  
  }
});

db.knex.schema.hasTable('Users').then(function(exists){
  if(!exists){
    db.knex.schema.createTable('Users', function(user){
      user.increments('id').primary();
      user.string('username');
    }).then(function(table){
      console.log('Created Users Table', table);
    });  
  }
});

db.knex.schema.hasTable('Keywords').then(function(exists){
  if(!exists){
    db.knex.schema.createTable('Keywords', function(keyword){
      keyword.increments('id').primary();
      keyword.string('word');
      keyword.timestamps();
    }).then(function(table){
      console.log('Created Keywords Table', table);
    });  
  }
});

db.knex.schema.hasTable('Project-Keywords').then(function(exists){
  if(!exists){
    db.knex.schema.createTable('Project-Keywords', function(project){
      pkey.increments('id').primary();
      pkey.integer('keyword_id');
      pkey.integer('project_id');
    }).then(function(table){
      console.log('Created Project-Keyword Table', table);
    });  
  }
});