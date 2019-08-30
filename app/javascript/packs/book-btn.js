const reviewsNumber = document.querySelectorAll(".card-product").length;
const bookBtn = document.querySelector(".book-now-btn");
window.addEventListener('scroll', () => {
  const weatherCard = document.querySelector(".weather-card");
  if (weatherCard.getBoundingClientRect().top < 154 + ( reviewsNumber * 122 ) ) {
    bookBtn.classList.add('book-no-fixed');
  } else {
    bookBtn.classList.remove('book-no-fixed');
  }
});
