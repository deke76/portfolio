const navElements = document.getElementsByClassName("container__nav__link");
const pageElements = document.getElementsByClassName("");
for (element of navElements) {
  element.addEventListener("mouseenter", function() {
    console.log(navElements);
    page = this.id.split('__')[0];
    pageContainerId = `${page}__container`;
    pageContainer = document.getElementById(pageContainerId);
    pageContainer.style.display = 'flex';
  });  
}