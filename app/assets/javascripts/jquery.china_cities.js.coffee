(($) ->
  $.fn.china_city = (type) ->
    @each ->
      console.log(type)
      selects = $(@).find('.city-select')
      selects.change ->
        $this = $(@)
        next_selects = selects.slice(selects.index(@) + 1) # empty all children city
        $("option:gt(0)", next_selects).remove()
        if next_selects.first()[0] and $this.val() and !$this.val().match(/--.*--/) # init next child
          url = "/china_cities/#{type}/#{$(@).val()}"

          $.get url, (data) ->
            data = data.data if data.data?
            next_selects.first()[0].options.add(new Option(option[0], option[1])) for option in data
            next_selects.trigger('china_city:load_data_completed');

  $(document).on 'ready page:load', ->
    $('.city-by-name').china_city('by_name')
    $('.city-by-id').china_city('by_id')
    $('.city-by-code').china_city('by_code')
)(jQuery)
