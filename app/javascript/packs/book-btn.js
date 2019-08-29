const bookBtn = document.querySelector(".book-now-btn");
window.addEventListener('scroll', () => {
  if (window.scrollY >= window.innerHeight / 1.7) {
    bookBtn.classList.add('book-no-fixed');
  } else {
    bookBtn.classList.remove('book-no-fixed');
  }
});
