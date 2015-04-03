var angular = require('angular');
var angular = require('../../../node_modules/angular-i18n/angular-locale_ru-ru.js');
var angularResource = require('angular-resource');
var angularRoute = require('angular-route');
var contacts = require('../../blocks/contacts/contacts.js');
var todo = require('../../blocks/todo/todo.coffee');
var server = require('../../blocks/server/server.js');
var components = require('../../blocks/components/components.js');

contacts();
todo();
server();
components();

angular.module('myApp', ['contacts','todo','project']);
