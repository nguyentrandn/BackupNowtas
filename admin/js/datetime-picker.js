$(document).ready(function() {
    let items = $('.datetime-picker input');

    $(items[0]).datepicker({
        numberOfMonths: 1,
        dateFormat: 'yy/mm/dd',
        onSelect: function(selectdate) {
            var dt = new Date(selectdate);
            dt.setDate(dt.getDate() + 1)
            $(items[1]).datepicker("option", "minDate", dt);
        }
    });

    $(items[1]).datepicker({
        numberOfMonths: 1,
        dateFormat: 'yy/mm/dd',
        onSelect: function(selectdate) {
            var dt = new Date(selectdate);
            dt.setDate(dt.getDate() + 1)
            $(items[0]).datepicker("option", "minDate", dt);
        }
    });


    $('.datetime-picker input').bind('input', function() {
        var c = this.selectionStart,
            r = /[^0-9-\s@./]/gi,
            v = $(this).val();
        if (r.test(v)) {
            $(this).val(v.replace(r, ''));
            c--;
        }
        this.setSelectionRange(c, c);
    });
});