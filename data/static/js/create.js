
$(document).ready(function(){
	// createPageSubmit is the submit button on the "Create" dialog in the left pane.
	$("#createPageSubmit").click(function(e){
		e.preventDefault();
		$("#editedText").attr({value: $("#pageType").val()});
		$("#createPageForm").attr({action: "/_edit/" + $("#pageName").val()});
		console.log("create.js: submitting" + $("#createPageForm").attr("action"));

		$("#createPageForm").submit();
	    });
    });
