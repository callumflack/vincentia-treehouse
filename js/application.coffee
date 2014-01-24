$ ->
    $(document).foundation()

    $(document).ready ->
        # enable skrollr only beyond mobile
        windowWidth = $(window).width()
        skrollr.init forceHeight: false  if windowWidth > 640
