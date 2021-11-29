//selectors
let header = document.querySelector('.header');
let hamburgerMenu = document.querySelector('.hamburger-menu');
let searchbar = document.querySelector('.search-btn');

hamburgerMenu.addEventListener('click', function(){
	header.classList.toggle('menu-open');
})

searchbar.addEventListener('click', function(){
	header.classList.toggle('search-open');
})