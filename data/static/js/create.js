
$(document).ready(function(){
    $("#createPageSubmit").click(
function(e){
    //    e.preventDefault();
    // alert("I'm here, Jim!");
    $("#editedText").attr({value: $("#pageType").val()});
    $("#createPageForm").attr({action: "/_edit/" + $("#pageName").val()});
    $("#createPageForm").submit();
}

);
    });
