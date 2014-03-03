jQuery ($) ->
  $('a[data-hide]').click (e) ->
    toHide = $(this).data('hide')
    $(this).siblings('input[hidden]').val(1)
    $(this).closest(toHide).hide
