# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  $('#paciente_birthdate').datepicker
    dateFormat: 'yy-mm-dd'
    changeMonth: true
    changeYear: true
    yearRange: '1970:2020'
    maxDate: '-1M'
