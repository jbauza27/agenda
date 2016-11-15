$(document).on('turbolinks:load', function() {
  $('#select_dia_nac').prop('disabled', true);

  $('#select_paises').change(function(){
    $.ajax({
      url: 'seleccion_pais',
      data: { id_pais: $("#select_paises option:selected").val() },
      dataType: "script"
    });    
  });

  $('#select_mes_nac').change(function() {
    $('#select_dia_nac').prop('disabled', false);

    $('#select_dia_nac').empty()
                        .append('<option value="0">Día...</option>');

    var opcSel = $('#select_mes_nac').find("option:selected");
    var valSel = opcSel.val();
    var texSel = opcSel.text();

    if(valSel == 0) {
      $('#select_dia_nac').prop('disabled', true);
    }
    if(valSel == 1) {
      for(var i = 1 ; i <= 31 ; i++) {
        $('#select_dia_nac').append('<option value=' + i + '>' + i + '</option>');
      }
    }
    if(valSel == 2) {
      for(var i = 1 ; i <= 28 ; i++) {
        $('#select_dia_nac').append('<option value=' + i + '>' + i + '</option>');
      }
    }
    if(valSel == 3) {
      for(var i = 1 ; i <= 31 ; i++) {
        $('#select_dia_nac').append('<option value=' + i + '>' + i + '</option>');
      }
    }
    if(valSel == 4) {
      for(var i = 1 ; i <= 30 ; i++) {
        $('#select_dia_nac').append('<option value=' + i + '>' + i + '</option>');
      }
    }
    if(valSel == 5) {
      for(var i = 1 ; i <= 31 ; i++) {
        $('#select_dia_nac').append('<option value=' + i + '>' + i + '</option>');
      }
    }
    if(valSel == 6) {
      for(var i = 1 ; i <= 30 ; i++) {
        $('#select_dia_nac').append('<option value=' + i + '>' + i + '</option>');
      }
    }
    if(valSel == 7) {
      for(var i = 1 ; i <= 31 ; i++) {
        $('#select_dia_nac').append('<option value=' + i + '>' + i + '</option>');
      }
    }
    if(valSel == 8) {
      for(var i = 1 ; i <= 31 ; i++) {
        $('#select_dia_nac').append('<option value=' + i + '>' + i + '</option>');
      }
    }
    if(valSel == 9) {
      for(var i = 1 ; i <= 30 ; i++) {
        $('#select_dia_nac').append('<option value=' + i + '>' + i + '</option>');
      }
    }
    if(valSel == 10) {
      for(var i = 1 ; i <= 31 ; i++) {
        $('#select_dia_nac').append('<option value=' + i + '>' + i + '</option>');
      }
    }
    if(valSel == 11) {
      for(var i = 1 ; i <= 30 ; i++) {
        $('#select_dia_nac').append('<option value=' + i + '>' + i + '</option>');
      }
    }
    if(valSel == 12) {
      for(var i = 1 ; i <= 31 ; i++) {
        $('#select_dia_nac').append('<option value=' + i + '>' + i + '</option>');
      }
    }    
  });
});