import "bootstrap";
import { initAutocomplete, initAutocomplete2 } from '../plugins/init_autocomplete';
import 'mapbox-gl/dist/mapbox-gl.css';
import "../plugins/flatpickr"
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { mouseMove } from './weather_chart.js';
import "./chart.js";
// import { chartTrigger } from "./chart-trigger.js"
import { loadDynamicBannerText } from '../components/banner';
import { initMapbox } from '../plugins/init_mapbox';




initAutocomplete();
initAutocomplete2();
mouseMove();
// chartTrigger();
initMapbox();


if (window.location.href === 'http://localhost:3000/' || window.location.href === 'https://surfinder-276.herokuapp.com/') {
  loadDynamicBannerText();
}


import { initStarRating } from '../plugins/init_star_rating';

initStarRating();
