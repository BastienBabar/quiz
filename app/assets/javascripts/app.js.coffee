$ ->
  ## scrollspy
  $root = $('html, body')
  $('.navbar-nav li.page-scroll a').click ->
    href = $.attr(this, 'href')
    $root.animate { scrollTop: $(href).offset().top }, 500, ->
      window.location.hash = href
      return
    false
  ## hopwork
  ((d, id) ->
    if d.getElementById(id)
      return
    s = d.createElement('script')
    c = d.getElementsByTagName('script')[0]
    s.type = 'text/javascript'
    s.async = true
    s.src = 'https://widgets.hopwork.com/1.0.0/js/sdk.min.js'
    c.parentNode.insertBefore s, c
    return
  ) document, 'hopwork-sdkjs-btn'
  ## twitter
  !((d, s, id) ->
    js = undefined
    fjs = d.getElementsByTagName(s)[0]
    p = if /^http:/.test(d.location) then 'http' else 'https'
    if !d.getElementById(id)
      js = d.createElement(s)
      js.id = id
      js.src = p + '://platform.twitter.com/widgets.js'
      fjs.parentNode.insertBefore js, fjs
    return
  )(document, 'script', 'twitter-wjs')
