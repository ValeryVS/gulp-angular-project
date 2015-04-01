var angular = require('angular');
var contacts = require('../../blocks/contacts/contacts.js');
var todo = require('../../blocks/todo/todo.coffee');

contacts();
todo();

angular.module('myApp', ['contacts','todo'])
