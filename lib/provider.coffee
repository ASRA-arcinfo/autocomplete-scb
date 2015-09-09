provider =
  selector: '.scb, .svb' #which file type should receive suggestions request
  disableForSelector: '' #which file type should not receive suggestions request

  inclusionPriority: 0 # autocomplete-scb priority set to 1
  excludeLowerPriority: true # exclude other autocomplete provider if true, else false.

  getSuggestions: ({editor,bufferPosition,scopeDescriptor,prefix}) #autocomplete ++ send request suggestion
    new Promise(resolve)-> #return a promise
      suggestion =
        text: 'COMBO_BOX'
        snippet: 'COMBO_BOX(${1:COUNT},{2:Window},{3:Branch},{4:Identity})'
        displayText: 'COMBO_BOX Count dsp'
        replacementPrefix: 'SCADAAAAAAA BASIXXX'
        type: 'method'
        leftLabel: 'COMBO_BOX Count lft'
        leftLabelHTML: ''
        rightlabel: 'COMBO_BOX function'
        rightlabelHTML: ''
        iconHTML: ''
        description:'This COMBO_BOX function counts the item'
        descriptionMoreUTL:'http://www.spotify.com'
      resolve([suggestions])
