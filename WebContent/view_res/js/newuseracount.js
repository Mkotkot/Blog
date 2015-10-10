/**
 * Created by FreeComp on 24/08/2015.
 */
/////////////////////// validation new user //////////////////////



/////////////////////////////////////////////////////
var _name = document.getElementById('_name');
var __name = document.getElementById('__name');

var _email = document.getElementById('_email');
var __email = document.getElementById('__email');

var _password = document.getElementById('_password');
var __password = document.getElementById('__password');


var _repassword = document.getElementById('_repassword');
var __repassword = document.getElementById('__repassword');

var _date = document.getElementById('_date');
var __date = document.getElementById('__date');


var _country = document.getElementById('_country');
var __country = document.getElementById('__country');


var _city = document.getElementById('_city');
var __city = document.getElementById('__city');

var _zip = document.getElementById('_zip');
var __zip = document.getElementById('__zip');


var __form = document.getElementById('__form');
var the_form = document.getElementById('the_form');

function user_Name_Valid() {
    if (!_name.value.match(/^[A-Za-z]{2,20}\s{1}[A-Za-z]{2,20}$/)) {
        $(__name).removeClass('hidden');
        return false;
    }
    else {
        $(__name).addClass('hidden');
        return true;
    }
}


function user_email_Valid() {
    if (!_email.value.match(/^[A-Za-z0-9/._/]{2,40}[@][A-Za-z]{2,9}[/.][A-Za-z]{2,9}$/)) {
        $(__email).removeClass('hidden');
        return false;
    }
    else {
        $(__email).addClass('hidden');
        return true;
    }

}


function user_password_Valid() {
    if (!_password.value.match(/^[A-Za-z0-9/._!@#$%^&*+=#$/]{6,40}$/)) {
        $(__password).removeClass('hidden');
        return false;
    }
    else {
        $(__password).addClass('hidden');
        return true;
    }

}

function user_repassword_Valid() {
    var nn = _repassword.value.localeCompare(_password.value);
    if (nn == -1) {
        $(__repassword).removeClass('hidden');
        return false;
    }
    else {
        $(__repassword).addClass('hidden');
        return true;
    }

}
function user_date_Valid() {
    if (!_date.value.match(/^[0-9]{2}[-][0-9]{2}[-][0-9]{4}$/)) {
        $(__date).removeClass('hidden');
        return false;
    }
    else {
        $(__date).addClass('hidden');
        return true;
    }
}

function user_city_Valid() {
    if (!_city.value.match(/^[A-Za-z]{2,20}$/)) {
        $(__city).removeClass('hidden');
        return false;
    }
    else {
        $(__city).addClass('hidden');
        return true;
    }

}

function user_country_Valid() {
    if (!_country.value.match(/^[A-Za-z]{2,20}$/)) {
        $(__country).removeClass('hidden');
        return false;
    }
    else {
        $(__country).addClass('hidden');
        return true;
    }

}


function user_zip_Valid() {
    if (!_zip.value.match(/^[0-9]{2,10}$/)) {
        $(__zip).removeClass('hidden');
        return false;
    }
    else {
        $(__zip).addClass('hidden');
        return true;
    }

}


function user_form_Valid() {
    if (user_Name_Valid() && user_country_Valid() && user_email_Valid()
        && user_city_Valid() && user_password_Valid()
        && user_repassword_Valid() && user_zip_Valid() && user_date_Valid()) {
        $(__form).addClass('hidden');
        return true;
    }
    else {
        $(__form).removeClass('hidden');
        return false;
    }

}
