/* blur on modal open, unblur on close
$(function () {
   
$('#aboutsbaims').on('show.bs.modal', function () {
$('#mycontent').addClass('blur');
});

$('#aboutsbaims').on('hide.bs.modal', function () {
$('#mycontent').removeClass('blur');
});
}); */

$(document).ready(function () {
    $(document).on('click', '#btnsad', function () {
        $("#grdvw2").css("visibility", "visible");
    });
});

//function checkvpub(a) {
//    var xmlhttp;
//    if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
//        xmlhttp = new XMLHttpRequest();
//    }
//    else {// code for IE6, IE5
//        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
//    }
//    xmlhttp.onreadystatechange = function () {
//        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
//            document.getElementById("aspub").innerHTML = xmlhttp.responseText;
//        }
//    }
//    xmlhttp.open("GET", "ajax_info.txt", true);
//    xmlhttp.send();
//}
