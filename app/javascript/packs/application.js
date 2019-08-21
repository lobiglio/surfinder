import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';
import "../plugins/flatpickr"

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';


initMapbox();
initAutocomplete();


// récupérer ton input et surtout le html qu'est dedans sur home

// addEventListener sur le bouton rechercher

// enregistrer cet HTML dans document.cookie - console.log cookie

// récupèrer nouvel input

// innerHTML = et lire le cookie pour en récupérer juste la valeur que tu veux

const address = document.getElementById("valid-address-btn");
address.addEventListener("click", (event) => {
  input = document.querySelectorAll("#form-search-school")
  alert('hi');
  console.log(input);
});
