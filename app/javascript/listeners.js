const navElements = Array.from(document.getElementsByClassName("container__nav__link"));
const pageElements = document.getElementsByClassName("container__page");
const mainContainer = document.getElementsByClassName("container")[0];
const navContainer = document.getElementsByClassName("container__nav")[0];

navElements.forEach((element, index) => {
  element.addEventListener("click", function() {
    if (navContainer.classList[1] != null) {
      navContainer.classList.remove("container__nav__left");
      navContainer.classList.remove("container__nav__right");
    }
    position = index % 2 ? "right" : "left";
    navContainer.classList.add(`container__nav__${position}`)
  })

  element.addEventListener("mouseenter", function() {
    const pageId = this.id.split('__')[0];
    const pageContainer = document.getElementById(`${pageId}__container`);
    pageContainer.style.display = 'flex';
  });
   
  element.addEventListener("mouseleave", function() {
    const pageId = this.id.split('__')[0];
    const pageContainer = document.getElementById(`${pageId}__container`);
    pageContainer.style.display = 'none';
  });
})
