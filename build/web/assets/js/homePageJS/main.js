// Show Nav Mobile
const btnShowMobileNav = document.querySelector(".nav-mobile--show-btn");
const btnHideMobileNav = document.querySelector(".nav-mobile-close");
const mobileNav = document.querySelector(".nav-mobile");
const overlay = document.querySelector(".nav_overlay");

function showMobileNav() {
  mobileNav.classList.add("show-nav-mobile");
  overlay.classList.add("show-overlay");
}
function hideMobileNav() {
  mobileNav.classList.remove("show-nav-mobile");
  overlay.classList.remove("show-overlay");
}
btnShowMobileNav.addEventListener("click", showMobileNav);
btnHideMobileNav.addEventListener("click", hideMobileNav);
overlay.addEventListener("click", hideMobileNav);

// Show Search Suggest
$(".header-search-input").focus(function () {
  $(".header-search-suggest").fadeIn();
});
$(".header-search-input").blur(function () {
  $(".header-search-suggest").fadeOut();
});
// Show Change Languages
const btnChangeLanguages = document.querySelector(".header-nav-language");
const changeLanguagesOptions = document.querySelector(".change-languages");

function showChangLanguages() {
  changeLanguagesOptions.classList.toggle("show");
}
btnChangeLanguages.addEventListener("click", showChangLanguages);

// Show Change Languages
const btnMobileLanguages = document.querySelector(".nav-mobile-language");
const MobileLanguagesOptions = document.querySelector(".mobile-language");

function showMobileLanguages() {
  MobileLanguagesOptions.classList.toggle("show-language");
}
btnMobileLanguages.addEventListener("click", showMobileLanguages);
// Loader Page
$(window).on("load", function (e) {
  $(".loader").delay(1000).fadeOut("lows");
});
