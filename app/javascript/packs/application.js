import "bootstrap";
import { initAutocomplete, initAutocomplete2 } from '../plugins/init_autocomplete';
import 'mapbox-gl/dist/mapbox-gl.css';
import "../plugins/flatpickr"
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import { loadDynamicBannerText } from '../components/banner';



initMapbox();
initAutocomplete();
initAutocomplete2();

if (window.location.href === 'http://localhost:3000/' || window.location.href === 'https://surfinder-276.herokuapp.com/') {
  loadDynamicBannerText();
}
