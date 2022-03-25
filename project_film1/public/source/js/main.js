$(function(){
    /* cho box đầu tiên hiển thị */
    $('.box:eq(2)').hide();
    $('.tab-list li').click(function() {
      /* loại bỏ class active của tất cả li */
      $('.tab-list li').removeClass('active');
      /* add class active của li được click */
      $(this).addClass('active');
      /* Xác định phần tử thứ n được click */
      var n = $('.tab-list li').index(this);
      /* Ẩn tất cả .box */
      $('.box').hide();
      /* Hiển thị .box theo phần tử thứ n */
      $('.box:eq('+ n +')').fadeIn(300);
    });
  });






                      