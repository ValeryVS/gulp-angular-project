var angular = require('angular');
var angularResource = require('angular-resource');
var angularRoute = require('angular-route');
var contacts = require('../../blocks/contacts/contacts.js');
var todo = require('../../blocks/todo/todo.coffee');
var server = require('../../blocks/server/server.js');

contacts();
todo();
server();

angular.module('myApp', ['contacts','todo','project'])
