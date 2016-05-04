//$.removeCookie('GUID');

 //WRITE THE LOG

 var _GUID = $.cookie('GUID');
 var _path = window.location.href;

// alert('id='+_GUID);

 $.ajax({
 url:   '../php/write_log.php',
 type:  'POST',
 cache: false,
 data:  {GUID: _GUID, appPath: _path},
 error: function() {
 alert('Erro ao tentar ação!');
 },
 success: function( ret ) {
  $.cookie('GUID', ret);
 //alert(ret);

 },
 beforeSend: function() {
 }
 });

 // $.cookie('GUID', '123');
 // alert($.cookie('GUID'));



