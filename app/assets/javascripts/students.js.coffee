# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#jQuery ->
#  # Ajax sorting and pagination on click
#  $('#students td.sortable a, #students .pagination a').on('click', ->
#    $.getScript(this.href)
#    false
#  )
#  # Ajax search on submit
#  $('#students_search').submit( ->
#    $.get(this.action, $(this).serialize(), null, 'script')
#    false
#  )
#  # Ajax search on keyup
#  $('#students_search input').keyup( ->
#    $.get($("#students_search").attr("action"), $("#students_search").serialize(), null, 'script')
#    false
#  )