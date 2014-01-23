$ ->
    $(document).foundation()

    $(document).ready ->
        s = skrollr.init()

    # get rid of the browser chrome for mobile Safari on page load
    # first check to see if it's an iPhone or iPod - as this is useless for other browsers
    if navigator.userAgent.match(/iPhone/i) or navigator.userAgent.match(/iPod/i)

      # if going to a comments section, don't apply the mobile Safari position fix
      if document.URL.indexOf("#") is -1
        window.addEventListener "load", ->
          setTimeout (->

            # and just to make sure they haven't scrolled down yet
            # don't want to piss the user off by jumping around
            # 20 is if they had only scrolled down a little bit,
            # but not fully out of view of the browser chrome
            window.scrollTo 0, 1  if window.pageYOffset < 20
          ), 0
