
var enableedit = document.getElementById('enabletheinputs');
var listinput = document.getElementById('edit-user-form-1').getElementsByTagName('input');

enableedit.onclick = function () {
    for (var x = 0; x < listinput.length; x++) {
        listinput[x].readOnly = false;
    }
};
