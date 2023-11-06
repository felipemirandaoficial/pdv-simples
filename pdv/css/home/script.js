'use strict'
const menuSize = '350px';
let open = false;
let openconf = false;
//document.querySelector('#menu').style.marginLeft = `-${menuSize}`;

document.querySelector('#btnMenu').addEventListener('click', e => {
    open = !open;
    toggleMenu();
})

document.querySelector('#btnClose').addEventListener('click', e => {
    open = false;
    toggleMenu();
})

document.querySelector('#btnConf').addEventListener('click', e => {
	openconf = !openconf;
    toggleConf();
})
document.querySelector('#btnClose2').addEventListener('click', e => {
    openconf = false;
    toggleConf();
})


function toggleMenu() {
    if (open) {
		openconf = false;
        document.querySelector('#menu').style.marginLeft = 0;
		document.querySelector('#menuconf').style.marginLeft = `-${menuSize}`;
        return;
    }
    document.querySelector('#menu').style.marginLeft = `-${menuSize}`;
}

function toggleConf() {
    if (openconf) {
		open = false;
        document.querySelector('#menuconf').style.marginLeft = 0;
		document.querySelector('#menu').style.marginLeft = `-${menuSize}`;
        return;
    }
    document.querySelector('#menuconf').style.marginLeft = `-${menuSize}`;
}