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
//= require_tree .

$(document).ready(function () {
    var qnt =0;

    $('#repeat').click(function () {
//, FOTO, VIDEO, ASSINATURA, COORDENADAS, DATA, DATA HORA, TEXTO, NÚMERO, AUDIO, CHECKBOX, RADIOBOX, ARQUIVO,
        var campo ="<br> " +
            "<div class='form-group'>" +
            "<label>Nome do Campo</label><br>"+
            "<input type='text' name='label["+qnt+"]' class='form-control'>" +
            "</div>"+

            "<div class='form-inline'><div class=form-group'>" +
            "<label>Tipo do Campo</label><br>" +
            "<select name='tipo["+qnt+"]' class=form-control'>"
            +"<option value='1'>FOTO</option>"
            +"<option value='2'>VÍDEO</option>"
            +"<option value='3'>ASSINATURA</option>"
            +"<option value='4'>COORDENADAS</option>"
            +"<option value='5'>DATA</option>"
            +"<option value='6'>DATA HORA</option>"
            +"<option value='7'>TEXTO</option>"
            +"<option value='8'>NÚMERO</option>"
            +"<option value='9'>AUDIO</option>"
            +"<option value='10'>CHECKBOX</option>"
            +"<option value='11'>RADIOBOX</option>"
            +"<option value='12'>ARQUIVO</option>"
            +"</select></div>"+
            "<div class='form-group'>" +
            "<label>Requerido</label><br>"+
            "<select name='rec["+qnt+"]' class='selectpicker' >" +
            "<option value='1'>Sim</option>" +
            "<option value='0'>Não</option>" +
            "</select>" +
            "</div></div><hr>";
        qnt++;
        $('#add').append(campo);
    });

});
