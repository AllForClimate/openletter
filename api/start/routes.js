'use strict';

/*
|--------------------------------------------------------------------------
| Routes
|--------------------------------------------------------------------------
|
| Http routes are entry points to your web application. You can create
| routes for different URL's and bind Controller actions to them.
|
| A complete guide on routing is available here.
| http://adonisjs.com/docs/4.1/routing
|
*/

/** @type {typeof import('@adonisjs/framework/src/Route/Manager')} */
const Route = use('Route');

Route.on('/').render('welcome');

Route.get('letters', 'LetterController.index');
Route.get('letters/featured', 'LetterController.featured');
Route.get('letters/:slug', 'LetterController.get');
Route.get('letters/:slug/:locale', 'LetterController.get');
Route.post('letters/create', 'LetterController.create');
Route.post('letters/update', 'LetterController.update');

// TODO: refactor to signatures/create
Route.post('letters/:slug/:locale/sign', 'LetterController.sign');
Route.post('signatures/confirm', 'SignatureController.confirm');
