const navElements = document.getElementsByClassName("container__nav__link");
const pageElements = document.getElementsByClassName("container__page");
const mainContainer = document.getElementsByClassName("container")[0];
const navContainer = document.getElementsByClassName("container__nav")[0];

mainContainer.addEventListener("click", function() {
  for (page of pageElements) {
    page.style.display = "none";
  }
});

for (element of navElements) {
  element.addEventListener("mouseenter", function() {
    for (page of pageElements) {
      page.style.display = "none";
    }
    const page = this.id.split('__')[0];
    const pageContainer = document.getElementById(`${page}__container`);
    pageContainer.style.display = 'flex';
  });
}