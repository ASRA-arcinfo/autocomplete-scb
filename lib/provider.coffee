provider =
  selector: '.source.scb, .source.svb'
  disableForSelector: '.source.scb .comment, .source.svb.comment'

getSuggestion: ({editor,bufferPosition,scopedDescriptor,prefix}) ->
  new Promise (resolve) ->
    # Suggestions
    suggestion =
      text: 'COMBOBOX'
      snippet: 'someText($(1:\"COUNT\"))'
      displayText: "COMBOBOX_Count"
      replacementPrefix: ''
