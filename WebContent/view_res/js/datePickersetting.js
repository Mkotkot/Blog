$(function () {
    $("#datepicker").datepicker({
        autoclose: true,
        todayHighlight: false
    }).datepicker('update', new Date());
    ;
});
