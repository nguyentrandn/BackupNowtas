function smForm() {
    // if (document.getElementById('plenter').value == "") {
    //     alert("Please Enter Fund Name!");
    //     return false;
    // }

    var dataForm = {
        'fundName': document.getElementById('plenter').value,
        'mailAddress': document.getElementById('emailAc10').value,
        'authority': document.getElementById('selectAc10').value,
        'from': document.getElementById('txtfrom').value,
        'to': document.getElementById('txtto').value,
    }

    console.log(dataForm);

}