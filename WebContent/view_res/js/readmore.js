var subjects = document.getElementsByClassName('sup-text-blo');


for (var x = 0; x < subjects.length; x++) {
    if (subjects[x].innerHTML.length < 550) {
    	
        subjects[x].childNodes[3].style.display = 'none';
    }
}

function readmorefun(ev) {
    var id = $(ev).closest("div").attr("id");
    var _div_subject = document.getElementById(id);
    $(_div_subject).removeClass('plog-text1');
    ev.style.display = 'none';

}