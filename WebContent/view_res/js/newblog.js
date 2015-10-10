/**
 * Created by FreeComp on 25/08/2015.
 */
var _titel = document.getElementById('_titel');
var __titel = document.getElementById('__titel');

var _supject = document.getElementById('_supject');


var __form = document.getElementById('__form');
var the_form = document.getElementById('the_form');


function blog_titel_Valid() {

    if (!_titel.value == "") {
        $(__titel).addClass('hidden');
        return true;
    }
    else {
        $(__titel).removeClass('hidden');
        return false;
    }

}


function blog_supject_Valid() {

    if (!_supject.value == "") {

        return true;
    }
    else {

        return false;
    }

}

function blog_form_Valid() {
    if (blog_titel_Valid() && blog_supject_Valid()) {
        $(__form).addClass('hidden');
        return true;
    }
    else {
        $(__form).removeClass('hidden');
        return false;
    }

}

