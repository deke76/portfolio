const navElements = Array.from(document.getElementsByClassName("container__nav__link"));
const pageElements = document.querySelector('div[class^="container__page"]');
const mainContainer = document.getElementsByClassName("container")[0];
const navContainer = document.getElementsByClassName("container__nav")[0];
const pageLinkElements = Array.from(document.getElementsByClassName("link__page"));

pageLinkElements.forEach((element) => {
  element.addEventListener("click", function() {
    const vertPosition = element.id.split('_').slice(-1)[0];
    const horPosition = vertPosition === "top" ? "left" : "right";
    pageElements.classList.add(`container__full__${vertPosition}`);
    navContainer.classList.remove("container__skew");
    navContainer.classList.add(`container__nav__${horPosition}`);
  });
})