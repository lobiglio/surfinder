import Typed from 'typed.js';


 const loadDynamicBannerText = () => {
  new Typed('#titre-js', {
    strings: [ "Find your spot", "Find the school that suits you."],
    typeSpeed: 100,
    loop: true,
    startDelay: 30,
    showCursor: false,
  });
}


export { loadDynamicBannerText };








