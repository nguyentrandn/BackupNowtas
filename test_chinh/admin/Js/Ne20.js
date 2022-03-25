function getdata() {

    var get = {
        'check': document.querySelector('input[name = "radio"]:checked').value
    }
    console.log(get);
}
// ----------------------
function validateImg() {
    $("#image").on("change", function() {
        if ($("#image")[0].files.length > 2) {
            // alert("You can select only 2 images");
            // return false;


        } else {
            $("#imageUploadForm").submit();
        }
    });
}