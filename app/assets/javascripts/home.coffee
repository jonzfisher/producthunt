# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  $('.upvote :checkbox').change ->
    upvoteCount = $(this).parent().children('.upvote-count')
    if (this.checked)
      upvotes = parseInt(upvoteCount.text())
      upvoteCount.text(upvotes+1);
    else
      upvotes = parseInt(upvoteCount.text())
      upvoteCount.text(upvotes-1);
