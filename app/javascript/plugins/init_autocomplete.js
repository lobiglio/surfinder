import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('search_location');
  if (addressInput) {
    places({ container: addressInput });
  }
};

const initAutocomplete2 = () => {
  const addressInput = document.getElementById('form-create-school');
  if (addressInput) {
    places({ container: addressInput });
  }
};
export { initAutocomplete, initAutocomplete2 };
