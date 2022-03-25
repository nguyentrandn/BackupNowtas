$(function () {
	$('.compBtn').click(function () {
		var type = $(this)[0].classList[1]
		$('.alert.' + type).fadeIn().css({ 'display': 'flex' });
	});
	$('.close').click(function () {
		$('.alert').fadeOut();
	});
	$('.yes').click(function () {
		$('.alert.typeCancel').fadeOut();
	});

	$('.sort').click(function () {
		$(this).toggleClass('on');
		if ($(this).hasClass('on')) {
			$('.messageList li').not('.visited').hide();
		} else {
			$('.messageList li').not('.visited').show();
		}
	});

	$('.calendar').datepicker({
		buttonImage: "/assets/img/user/icon_calendar.png",
		buttonText: "カレンダーから選択",
		buttonImageOnly: true,
		showOn: "both"
	});

	// 日本語化
	$.datepicker.regional['ja'] = {
		closeText: '閉じる',
		prevText: '<前',
		nextText: '次>',
		currentText: '今日',
		monthNames: ['1月', '2月', '3月', '4月', '5月', '6月',
			'7月', '8月', '9月', '10月', '11月', '12月'],
		monthNamesShort: ['1月', '2月', '3月', '4月', '5月', '6月',
			'7月', '8月', '9月', '10月', '11月', '12月'],
		dayNames: ['日曜日', '月曜日', '火曜日', '水曜日', '木曜日', '金曜日', '土曜日'],
		dayNamesShort: ['日', '月', '火', '水', '木', '金', '土'],
		dayNamesMin: ['日', '月', '火', '水', '木', '金', '土'],
		weekHeader: '週',
		dateFormat: 'yy-mm-dd',
		firstDay: 0,
		isRTL: false,
		showMonthAfterYear: true,
		yearSuffix: '年'
	};
	$.datepicker.setDefaults($.datepicker.regional['ja']);

});