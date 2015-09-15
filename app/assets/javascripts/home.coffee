# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $('#new_contact').on('ajax:success', (event, data, status, xhr) ->
    $('#myModal').foundation('reveal', 'open');
    $('small.error').remove()
    $('.error').removeClass 'error'
    return
  ).on 'ajax:error', (event, xhr, status, error) ->
    errors = xhr.responseJSON.errors
    for key of errors
      $("#contact_#{key}").addClass('error').after "<small class='error'>" + errors[key] + "</small>"

    return

  $('.move-down').click ()->
    $('html,body').animate { scrollTop: $('#profile').offset().top }, '500'
