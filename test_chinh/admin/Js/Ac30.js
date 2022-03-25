// -------------------------------
function getDataFromServer() {
    return {
        'enter': 'Le Van Long',
        'emailAc30': 'long@gmail.com',
        'op': '1',
    }
}

var data = getDataFromServer();
loadDataToForm(data);

// load data len form
function loadDataToForm(data) {
    document.getElementById('enter').value = data.enter;
    document.getElementById('emailAc30').value = data.emailAc30;
    document.getElementById('op').value = data.op;
}
// lay data tu form
function submitForm() {
    var formData = {
        'enter': document.getElementById('enter').value,
        'email': document.getElementById('emailAc').value,
        'option': document.getElementById('op').value,
    };

    console.log(formData);
}
//-----------------------------------