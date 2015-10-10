var _home = document.getElementById('_home');
var _about = document.getElementById('_about');
var _newblog = document.getElementById('_newblog');

function activeabut  () {
    $(_about).addClass('active');
    $(_home).removeClass('active');
    $(_newblog).removeClass('active');
}

function activehome  () {
    $(_home).addClass('active');
    $(_newblog).removeClass('active');
    $(_about).removeClass('active');
}

function activenewblog() {
    $(_newblog).addClass('active');
    $(_home).removeClass('active');
    $(_about).removeClass('active');
}