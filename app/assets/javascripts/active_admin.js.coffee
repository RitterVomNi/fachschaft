#= require active_admin/base

$ ->
  $('manager_form').submit (event)->
    if confirm 'Are you sure?'
      true
    else
      event.preventDefault()