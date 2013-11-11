

$(document).ready(function(){
    // createPageSubmit is the submit button on the "Create" dialog in the left pane.
    $("#createPageSubmit").click(function(e){
	e.preventDefault();
	$("#editedText").attr({value: $("#pageType").val()});
	$("#createPageForm").attr({action: "/_edit/" + $("#pageName").val()});
	console.log("create.js: submitting" + $("#createPageForm").attr("action"));

	$("#createPageForm").submit();
    });

    // This is for the Practice form.
    $.getScript("/js/jquery.dataTables.min.js")
	.done(function(script, textStatus){
	    console.log("jquery.dataTables.min.js: " + textStatus);
	    $.getScript("/js/forms.js")
		.done(function(script, textStatus){
		    console.log("forms.js: " + textStatus);
		})
		.fail(function(jqxhr, settings, exception){
		    console.log("load forms.js failed: " + exception);
		});

	})
	.fail(function(jqxhr, settings, exception){
	    console.log("load jquery.dataTables.min..js failed");
	});

    // Load the advisor consultation ajax code.
    $.getScript("/js/jquery-ui.js")
	.done(function(script, textStatus) {
		// Consult.js depends on jquery-ui accordion and tabs widgets.
		$.getScript("/js/consult.js")
		    .done(function(script, textStatus){
			    console.log("consult.js: " + textStatus);
			    submitConsult();
			})
		    .fail(function(jqxhr, settings, exception){
			    console.log("load consult.js failed: " + exception);
			});
	    })
	.fail(function(jqxhr, settings, exception){
		console.log("load jquery-ui.js failed: " + exception);
	    });
});
