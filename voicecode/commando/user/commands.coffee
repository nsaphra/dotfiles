# add any custom commands here

Commands.create
  "sky turn":
    grammarType: "none"
    description: "shift enter"
    tags: ["combo", "return"]
    repeatable: true
    action: ->
      @key 'return', 'shift'
  "latexoif":
    grammarType: "none"
    description: "shift enter"
    triggerPhrase: "lahtehkoif"
    tags: ["symbol", "user"]
    misspellings: []
    action: (input) ->
      @string "``''"
      @left(times=1)
  "swot"
    tags: ["symbol", "user"]
    action: (input) ->
      @string ". "
  "undo":
    tags: ["user", "shell"]
    triggerScopes: ["iTerm", "Terminal"]
    action: (input) ->
      @key "Control", "_"

Settings["remoteHosts"] =
  "nyx": "nyx"
  "nicks": "nyx"
  "moroso": "moroso"
Commands.create
  "shell secure":
    grammarType: 'textCapture'
    description: "either connect to a machine or simply type 'ssh '"
    tags: ["ssh", "terminal", "domain-specific"]
    triggerScopes: ['iTerm', 'Terminal']
    action: (input) ->
      text = ""
      if input?.length
        text = @fuzzyMatch Settings.remoteHosts, input.join(' ')
      @string "ssh " + text

Settings["latexCommands"] =
  "subsection": "subsection"
  "section": "section"
  "subsubsection": "subsubsection"
Commands.create
  "lahtek":
    grammarType: 'oneArgument'
    tags: ["user"]
    action: (input) ->
      if input?.length
        text = @fuzzyMatch Settings.latexCommands, input
        @string "\\" + text + "{}"
        @left(times=1)

Settings["mathSymbols"] =
  "eta": "eta"
  "chai": "chi"
  "try": "chi"
  "c": "xi"
  "see": "xi"
  "lambda": "lambda"
  "mu": "mu"
  "row": "rho"
  "sigh": "psi"
  "tao": "tau"
  "theta": "theta"
  "up": "upsilon"
  "zeta": "zeta"
  # these are generally helpful with latex, but aren't actually math specific
  "page": "newpage"
Commands.create
  "mathsim":
    grammarType: 'oneArgument'
    description: "enter math symbols"
    tags: ["user"]
    action: (input) ->
      if input?.length
        text = @fuzzyMatch Settings.mathSymbols, input
        @string text

Settings["gitCommands"] =
  "add": "add "
  "diff": "diff "
  "clone": "clone "
  "commit all": "commit -a -m "
  "commit": "commit "
  "push": "push "
Commands.create
  "shell git":
    grammarType: 'textCapture'
    description: "git commands"
    tags: ["terminal", "domain-specific", "user"]
    triggerScopes: ['iTerm', 'Terminal']
    action: (input) ->
      text = ""
      if input?.length
        text = @fuzzyMatch Settings.remoteHosts, input.join(' ')
      @string "git " + text

Commands.create
  "bigsenchen":
    grammarType: 'textCapture'
    description: 'Sentence case with spaces'
    tags: ['text', 'recommended']
    spaceBefore: true
    autoSpacing: 'never normal'
    multiPhraseAutoSpacing: 'never normal'
    action: (input) ->
      if @isTextSelected()
        contents = @getSelectedText()
        transformed = contents.replace /(^|\.\s|\n)\w/g, (match) ->
          match.toUpperCase()
        @string transformed
