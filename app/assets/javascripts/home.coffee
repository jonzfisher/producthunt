# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  @toggleCheckbox = toggleCheckbox = (element) ->
    upvoteCount = $("#" + element.id).parent().find('.upvote-count')
    if (element.checked)
      upvotes = parseInt(upvoteCount.text())
      upvoteCount.text(upvotes+1);
      $("#" + element.id).parent().addClass("checked")
    else
      upvotes = parseInt(upvoteCount.text())
      upvoteCount.text(upvotes-1);
      $("#" + element.id).parent().removeClass("checked")
