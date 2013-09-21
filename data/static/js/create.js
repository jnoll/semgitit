

$(document).ready(function(){
    // createPageSubmit is the submit button on the "Create" dialog in the left pane.
    $("#createPageSubmit").click(function(e){
	e.preventDefault();
	$("#editedText").attr({value: $("#pageType").val()});
	$("#createPageForm").attr({action: "/_edit/" + $("#pageName").val()});
	console.log("create.js: submitting" + $("#createPageForm").attr("action"));

	$("#createPageForm").submit();
    });

    $.getScript("/js/jquery.dataTables.min.js")
	.done(function(script, textStatus){
	    console.log("jquery.dataTables.min.js: " + textStatus);
	    $.getScript("/js/forms.js")
		.done(function(script, textStatus){
		    console.log("forms.js: " + textStatus);
		})
		.fail(function(jqxhr, settings, exception){
		    console.log("load forms.js failed");
		});

	})
	.fail(function(jqxhr, settings, exception){
	    console.log("load jquery.dataTables.min..js failed");
	});

    $.getScript("/js/consult.js")
	.done(function(script, textStatus){
	    console.log("consult.js: " + textStatus);
	    submitConsult();
	})
	.fail(function(jqxhr, settings, exception){
	    console.log("load consult.js failed");
	});
});
