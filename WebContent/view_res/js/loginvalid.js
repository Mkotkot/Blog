/**
 * Created by FreeComp on 25/08/2015.
 */

var _email = document.getElementById('_email');

var _password = document.getElementById('_password');

var __form = document.getElementById('__form');




function login_email_Valid() {

    if (!_email.value == "") {

        return true;
    }
    else {

        return false;
    }

}

function login_password_Valid() {

    if (!_password.value == "") {

        return true;
    }
    else {

        return false;
    }

}

function login_form_Valid() {
    if (login_email_Valid() && login_password_Valid()) {
        $(__form).addClass('hidden');
        return true;
    }
    else {
        $(__form).removeClass('hidden');
        return false;
    }

}
