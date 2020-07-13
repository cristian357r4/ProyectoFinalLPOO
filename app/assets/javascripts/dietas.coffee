# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  subalimentos = $('#dieta_subalimento_id').html()
  $('dieta_alimento_id').change ->
    alimento = $('#dieta_alimento_id :selected').text()
    options = $(subalimentos).filter("optgroup[label='#{alimento}']").html()
    if options
      $('#dieta_subalimento_id').html(options)
    else
      $('#dieta_subalimento_id').empty()

