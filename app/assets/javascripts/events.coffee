# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'ready page:load', ->
    $('#calendar').fullCalendar({
      header: {
        left: 'month,agendaWeek,agendaDay',
        center: 'title',
        right: 'today,prev,next'
      },

      theme: true,
      themeSystem: 'standard',
      events: '/events.json',

      timeFormat: 'hh:mm a'
      # eventColor: '#00ff00'
    });
