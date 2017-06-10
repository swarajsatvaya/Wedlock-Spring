<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Wedlock</title>
<%@ include file="admin-includeHeader.jsp"%>
</head>
<body>
<form method="post" enctype="multipart/form-data" id="fileUploadForm">
<!-- Service Name:<input type="text" name="serviceName" id="serviceName">
Service Desc:<input type="text" name="serviceDesc" id="serviceDesc">
Registration Charge:<input type="text" name="registrationCharge" id="registrationCharge">
Package For:<select name="packageFor" id="packageFor">
<option value="">Select Package Here</option>
<option value="monthly">Monthly</option>
<option value="yearly">Yearly</option>
</select> -->
<div id="fileDropZone" class="dropzone">
File:<input type="file" name="iconFiles" id="iconFile" value="">
</div>
<hr>
<div id="fileDropZone3" class="dropzone">
File:<input type="file" name="iconFiles" id="iconFile">
</div>

<input type="submit" id="submit" value="Submit">
</form></body>
<script src="resources/js/jquery-2.1.3.min.js"></script>
<script src="resources/js/dropzone.js"></script> <!-- Dropzone Plugin Js -->
<script type="text/javascript">
Dropzone.autoDiscover = false;
$( document ).ready(function() {
    alert("Hello");
    
    $("div#fileDropZone").dropzone({ url: "testController",maxFiles: 1, init :function(){
    	 this.on("success", function(file, response) {
             var obj = file.name;
             alert(obj);
    	 });
    }});
    $("div#fileDropZone3").dropzone({ url: "#" });
});

$("#submit").click(function (event) {

    //stop submit the form, we will post it manually.
    event.preventDefault();

    // Get form
    //var form = Dropzone.forElement("div#fileDropZone").files[0];
    //$("div#fileDropZone").dropzone({ url: "/testController" });

	// Create an FormData object
    /* var data = new FormData(form);

	// disabled the submit button
    $("#submit").prop("disabled", true);

    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url: "testController",
        data: data,
        processData: false,
        contentType: false,
        cache: false,
        timeout: 600000,
        success: function (data) {

           alert("Success");
            $("#submit").prop("disabled", false);

        },
        error: function (e) {

            alert("Error");
            $("#submit").prop("disabled", false);

        }
    });
 */
});

</script>
</html>