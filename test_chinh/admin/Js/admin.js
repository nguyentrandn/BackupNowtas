function menu() {
    let btn_close = document.querySelector("#btn_close");
    let btn_open = document.querySelector("#btn_open");
    let menu = document.querySelector(".menu");

    btn_close.onclick = function() {
        menu.classList.toggle("active");
    }
    btn_open.onclick = function() {
        menu.classList.toggle("active");
    }
}
// Date
function date() {
    $("#txtfrom").datepicker({
        numberOfMonths: 1,
        dateFormat: 'yy/mm/dd',
        onSelect: function(selectdate) {
            var dt = new Date(selectdate);
            dt.setDate(dt.getDate() + 1)
            $("#txtto").datepicker("option", "minDate", dt);
        }
    });

    $("#txtto").datepicker({
        numberOfMonths: 1,
        dateFormat: 'yy/mm/dd',
        onSelect: function(selectdate) {
            var dt = new Date(selectdate);
            dt.setDate(dt.getDate() - 1)
            $("#txtfrom").datepicker("option", "maxDate", dt);
        }
    });
};
// Text HinaTa
function texthina() {
    let input = document.querySelector("input");

    // disable event function
    const disableEvent = e => {
        e.preventDefault();
        e.stopPropagation();
    };

    // disable paste
    input.addEventListener("paste", disableEvent);

    // disable drag&drop
    input.addEventListener("drop", disableEvent);

    // remove string
    input.addEventListener("keyup", function(e) {
        let tmp = [];

        this.value.split("").forEach(function(item, i) {
            if (item.match(/^[\u3040-\u309f]+$/)) {
                tmp.push(item);
            }
        });

        if (tmp.length > 0) {
            this.value = tmp.join("");
        } else {
            this.value = "";
        }
    });
}

// test lay du lieu tu form
function getdulieu() {

    var email = document.getElementById('email').value;
    var from = document.getElementById('txtfrom').value;
    var to = document.getElementById('txtto').value;
    // var rate = document.getElementById('checker').value;

    var rate_value;
    if (document.getElementById('NotYet').checked) {
        rate_value = document.getElementById('NotYet').value;
    } else if (document.getElementById('Already').checked) {
        rate_value = document.getElementById('Already').value;
    }
    //
    console.log(email);
    console.log(from);
    console.log(to);
    console.log(rate_value);
}

// test du du lieu ra form 
function loaddata() {
    // var data = {
    //     email: 'nguyentran@gmail.com',
    //     from: '20/1/2022',
    //     to: '20/2/2022'
    // }
    var title = 'nguyentran@gmail.com';
    document.getElementById('title').value = title;
    // var from = document.getElementById(txtfrom).value = "1 / 2 / 2022";

}

// test validate vs Form
function validateform() {
    let vali = document.forms["myform"]["lzenter"].value;
    if (vali == "") {
        alert("vui lòng nhập vào ô Input!");
        return false;
    }
    console.log(vali);

    var select = document.getElementById('inputState').value;
    console.log(select);

    var from = document.getElementById('txtfrom').value;
    var to = document.getElementById('txtto').value;
    console.log(from);
    console.log(to);
}

//load data ra AC30
function loaddata() {
    // var obj = "Le Xuan Long";
    // document.getElementById('enter').value = obj;

    // var email = "longleloi@gmail.com";
    // document.getElementById('email').value = email;

    // var option = 1;
    // document.getElementById('op').value = option;
}