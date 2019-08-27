import "bootstrap";
import { initAutocomplete, initAutocomplete2 } from '../plugins/init_autocomplete';
import 'mapbox-gl/dist/mapbox-gl.css';
import "../plugins/flatpickr"
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { mouseMove } from './weather_chart.js';
import "./chart.js";


initMapbox();
initAutocomplete();
initAutocomplete2();
mouseMove();
chartTrigger();



