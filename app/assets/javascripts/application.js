// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require jquery_nested_form
//= require_tree .

$(document).ready(function () {

    $(document).on('nested:fieldAdded', function(event){
      console.log('test')
      // this field was just inserted into your form
      var field = event.field;
      var optionsField = field.find('.formulario_formulario_fields_options');
      $(optionsField).hide();

      // it's a jQuery object already! Now you can find date input
      var selectField = field.find('select')
      $(selectField).change(function(){
        if($(this).val() == 10 || $(this).val() == 11){ // or this.value == 'volvo'
          $(optionsField).show();
        } else {
          $(optionsField).hide();
        }
      });

    })



//     var qnt =0;

//     $('#repeat').click(function () {
// //, FOTO, VIDEO, ASSINATURA, COORDENADAS, DATA, DATA HORA, TEXTO, NÚMERO, AUDIO, CHECKBOX, RADIOBOX, ARQUIVO,
//         var campo ="<br> " +
//             "<div class='form-group'>" +
//             "<label>Nome do Campo</label><br>"+
//             "<input type='text' name='label["+qnt+"]' class='form-control'>" +
//             "</div>"+

//             "<div class='form-inline'><div class=form-group'>" +
//             "<label>Tipo do Campo</label><br>" +
//             "<select name='tipo["+qnt+"]' class=form-control' id='select_field'>"
//             +"<option value='1'>FOTO</option>"
//             +"<option value='2'>VÍDEO</option>"
//             +"<option value='3'>ASSINATURA</option>"
//             +"<option value='4'>COORDENADAS</option>"
//             +"<option value='5'>DATA</option>"
//             +"<option value='6'>DATA HORA</option>"
//             +"<option value='7'>TEXTO</option>"
//             +"<option value='8'>NÚMERO</option>"
//             +"<option value='9'>AUDIO</option>"
//             +"<option value='10'>CHECKBOX</option>"
//             +"<option value='11'>RADIOBOX</option>"
//             +"<option value='12'>ARQUIVO</option>"
//             +"</select></div>"+

//             "<div class='form-group'>" +
//             "<label>Requerido</label><br>"+
//             "<select name='rec["+qnt+"]' class='selectpicker' >" +
//             "<option value='1'>Sim</option>" +
//             "<option value='0'>Não</option>" +
//             "</select>" +
//             "</div></div><hr>";
//         $('#add').append(campo);

//         var options_field = "<br><br>" +
//             "<div class='form-group'>" +
//             "<label>opções</label><br>"+
//             "<input type='text' name='options["+qnt+"]' class='form-control' id='options_"+qnt+"'>" +
//             "</div>"

//         $('#select_field').change(function(){
//           if($(this).val() == 10 || $(this).val() == 11 ){ // or this.value == 'volvo'
//             $(this).parent().append(options_field);
//           }
//         });

//         qnt++;
//     });


});
