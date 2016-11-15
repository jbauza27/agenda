$(document).on('turbolinks:load', function() {
  $('#select_paises').change(function(){
    $.ajax({
      url: 'seleccion_pais',
      data: { id_pais: $("#select_paises option:selected").val() },
      dataType: "script"
    });    
  });
});