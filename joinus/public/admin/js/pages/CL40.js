let state = {};

function pagination(querySet, page, rows) {
    var trimStart = (page - 1) * rows
    var trimEnd = trimStart + rows

    var trimmedData = querySet.slice(trimStart, trimEnd)

    var pages = Math.round(querySet.length / rows);

    return {
        'querySet': trimmedData,
        'pages': pages,
    }
}

function pageButtons(pages) {
    var wrapper = document.getElementById('pagination-wrapper')

    wrapper.innerHTML = ``

    var maxLeft = (state.page - Math.floor(state.window / 2))
    var maxRight = (state.page + Math.floor(state.window / 2))

    if (maxLeft < 1) {
        maxLeft = 1
        maxRight = state.window
    }

    if (maxRight > pages) {
        maxLeft = pages - (state.window - 1)

        if (maxLeft < 1) {
            maxLeft = 1
        }
        maxRight = pages
    }

    for (var page = maxLeft; page <= maxRight; page++) {
        wrapper.innerHTML += `<button value=${page} class="page btn btn-sm btn-info">${page}</button>`
    }


    if (state.page != 1 && pages > 5) {
        wrapper.innerHTML = `<button value=${1} class="page btn btn-sm btn-info">&#171; 初め</button>` + wrapper.innerHTML
    }

    if (state.page != pages && pages > 5) {
        wrapper.innerHTML += `<button value=${pages} class="page btn btn-sm btn-info">最後 &#187;</button>`
    }

    // Set color for active button.
    $(`button[value="${state.page}"]`).addClass('active');

    $('.page').on('click', function() {
        state.page = Number($(this).val())
        buildTable()
    });
}

function loadTableData(conditions) {
    $("#table_data").find("tr:gt(0)").remove();
    $('#table_data').append(`
		<tr class="in" style="border-bottom: 0.1rem solid #D6D6D6; ">
			<td colspan="8" style="padding: 0;  text-align: center;"><img style="width: 60px; height:  60px;" src="/assets/img/form/loading.svg" /></td>
		</tr>
		`);
    state = {
        'querySet': [],
        'page': 1,
        'rows': 2,
        'window': 5,
    }

    // ------ DUMMY DATA ----------
    var dummy_data = {
        'クエスト名': 'xxxx',
        '依頼主': 'xxxx',
        'ステータス': 'fdsf',
        '掲載期間': 'afgb',
        'Join人数': 'vxv',
    };

    for (var i = 1; i <= 20; i++) {
        dummy_data.id = i;
        state.querySet.push(dummy_data);
    }
    // ------ ----------


    buildTable();


    // $.ajax({
    //         url: "/ajax/admin.list",
    //         data: JSON.stringify(conditions),
    //         type: 'POST',
    //         contentType: 'application/json',
    //     })
    //     .done(function(data) {
    //         state.querySet = data.result;

    //         buildTable();
    //     })
    //     .fail(function(error) {
    //         showErrorMessage(error.responseJSON);
    //     });
}

function buildTable() {
    let items = '';

    var data = pagination(state.querySet, state.page, state.rows);
    var chunk = data.querySet;

    chunk.forEach(function(data) {
        items += `
        <tr>
            <td><a href="">${data['クエスト名'] || '-'}</a></td>
            <td>${data['依頼主'] || '-'}</td>
            <td>${data['ステータス'] || '-'}</td>
            <td>${data['掲載期間'] || '-'}</td>
            <td>${data['Join人数'] || '-'}</td>
        </tr>
        `
    });

    $("#table_data").find("tr:gt(0)").remove();
    $('#table_data').append(items);

    pageButtons(data.pages);
}

function doSearch() {
    let search_conditions = getDataFromForm('form');
    loadTableData(search_conditions);
}

//


$(document).ready(function() {

    loadTableData();

    /**
     * Handle press enter key
     */
    $(document).on('keypress', function(e) {
        if (e.which == 13) {
            doSearch();
        }
    });

    $('#reset_form_button').click(function() {
        loadTableData();
    });

    $('#search_button').click(function() {
        doSearch();
    });
    /**
     * Popup mamage lottery information
     */
    $('.edit-lottery-result-btn').click(function() {
        var myModal = new bootstrap.Modal(document.getElementById('FD41_input_lottery_result_modal'));
        myModal.show();
    });

    /**
     * Cacel application
     */
    $('.cancel-application-btn').click(function() {
        var myModal = new bootstrap.Modal(document.getElementById('popup_confirm_cancel_application'));
        myModal.show();
    });

    /**
     * Open popup upload CSV fun results application
     */
    $('#button_upload_csv_fund_results').click(function() {
        var myModal = new bootstrap.Modal(document.getElementById('popup_upload_fund_results'));

        $('#popup_upload_fund_results_step_input').show();
        $('#popup_upload_fund_results_on_success').hide();
        $('#popup_upload_fund_results_header').text('当選結果アップロード');
        $('#fund_result_file_input').val(null);

        myModal.show();
    });

    let fund_result_file;

    $('#fund_result_file_input').on('change', function(input) {
        if (input.target.files && input.target.files[0]) {
            fund_result_file = input.target.files[0];
        }
    });

    $('#upload_fund_result_btn').click(function() {
        if (!fund_result_file) return;

        let FUND_ID = $.urlParam('fund_id');

        var formData = new FormData();
        formData.append('file', fund_result_file);
        $.ajax({
                url: "/ajax/fund.upload_csv.application/" + FUND_ID,
                method: 'POST',
                data: formData,
                cache: false,
                processData: false,
                contentType: false,
            })
            .done(function() {
                $('#popup_upload_fund_results_step_input').hide();
                $('#popup_upload_fund_results_on_success').removeClass('d-none').fadeIn();
                $('#popup_upload_fund_results_header').text('');
            });
    });

});