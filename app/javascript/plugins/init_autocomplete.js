import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('form-search-school');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
