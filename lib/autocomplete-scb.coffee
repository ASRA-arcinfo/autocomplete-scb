AutocompleteScbView = require './autocomplete-scb-view'
{CompositeDisposable} = require 'atom'

module.exports = AutocompleteScb =
  autocompleteScbView: null
  modalPanel: null
  subscriptions: null

  activate: (state) ->
    @autocompleteScbView = new AutocompleteScbView(state.autocompleteScbViewState)
    @modalPanel = atom.workspace.addModalPanel(item: @autocompleteScbView.getElement(), visible: false)

    # Events subscribed to in atom's system can be easily cleaned up with a CompositeDisposable
    @subscriptions = new CompositeDisposable

    # Register command that toggles this view
    @subscriptions.add atom.commands.add 'atom-workspace', 'autocomplete-scb:toggle': => @toggle()

  deactivate: ->
    @modalPanel.destroy()
    @subscriptions.dispose()
    @autocompleteScbView.destroy()

  serialize: ->
    autocompleteScbViewState: @autocompleteScbView.serialize()

  toggle: ->
    console.log 'AutocompleteScb was toggled!'

    if @modalPanel.isVisible()
      @modalPanel.hide()
    else
      @modalPanel.show()
