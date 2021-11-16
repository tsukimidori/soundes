$(document).ready(function(){
  $(document).on('click', '#submit', function(){
    var search = $('#search').val()
    $.ajax({
      url: '/recommends/search',
      type: 'GET',
      data: { term: search },
      dataType: 'html'
    }).done(function(data){
      $('.result').html(data);
    }).fail(function(data){
      alert('通信に失敗しました。')
    });
  });
});