// import external dependencies
import 'jquery';
import 'bootstrap-sass/assets/javascripts/bootstrap';
import 'fastclick';

// import local dependencies
import Router from './util/router';
import common from './routes/Common';

/**
 *
 * @type {Router}
 */
const router = new Router({
  common
});

// Load Events
$(document).ready(() => router.loadEvents());
