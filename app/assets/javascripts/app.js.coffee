$ ->
  ## scrollspy
  $root = $('html, body')
  $('.navbar-nav li.page-scroll a').click ->
    href = $.attr(this, 'href')
    $root.animate { scrollTop: $(href).offset().top }, 500, ->
      window.location.hash = href
      return
    false
