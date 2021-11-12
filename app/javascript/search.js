$('#submit').click(function(){
  $.ajax({
    url: 'search_recommends_path',
    type: 'GET',
    dataType: 'html'
  }).done(function(data){
    $('.result').html(data);
  }).fail(function(data){
    alert('通信に失敗しました。')
  });
});