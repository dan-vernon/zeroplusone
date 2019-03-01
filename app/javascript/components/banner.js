import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#typed-text', {
    strings: ["Find the perfect plus one for your awkward family event!"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };

