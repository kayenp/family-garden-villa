"use strict";

const menu = document.querySelector('.mobile__menu');
const menuClose = document.querySelector('.nav__menu--close');
const nav = document.querySelector('.nav');

// nav.addEventListener('click', function closeNav() { nav.style.height = '0' });

menu.addEventListener('click', () => {
	menu.style.visibility = 'hidden';
})

menuClose.addEventListener('click', () => {
	nav.style.height = '0';
});