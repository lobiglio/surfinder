import "bootstrap";
import { initAutocomplete, initAutocomplete2 } from '../plugins/init_autocomplete';
import 'mapbox-gl/dist/mapbox-gl.css';
import "../plugins/flatpickr"
import { initMapbox } from '../plugins/init_mapbox';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';


initMapbox();
initAutocomplete();
initAutocomplete2();

const confirmation = document.querySelector(".confirmation");
confirmation.addEventListener("submit", (event) => {
  console.log(event);
  console.log(event.currentTarget);
});
