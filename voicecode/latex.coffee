mathSymbols =
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
latexCommands =
  "subsection": "subsection"
  "section": "section"
  "subsubsection": "subsubsection"
Package.commands
  "lahtek":
    grammarType: 'oneArgument'
    tags: ["user", "latex"]
    action: (input) ->
      if input?.length
        text = @fuzzyMatch latexCommands, input
        @string "\\" + text + "{}"
        @left(times=1)
  "mathsim":
    grammarType: 'oneArgument'
    description: "enter math symbols"
    tags: ["user", "latex"]
    action: (input) ->
      if input?.length
        text = @fuzzyMatch mathSymbols, input
        @string text
  "bigsenchen":
    grammarType: 'textCapture'
    description: 'Sentence case with spaces'
    tags: ['text', 'user']
    spaceBefore: true
    autoSpacing: 'never normal'
    multiPhraseAutoSpacing: 'never normal'
    action: (input) ->
      if @isTextSelected()
        contents = @getSelectedText()
        transformed = contents.replace /(^|\.\s|\n)\w/g, (match) ->
          match.toUpperCase()
        @string transformed
  "latex coif":
    grammarType: "none"
    description: "latex quotes"
    triggerPhrase: "latex coif"
    tags: ["symbol", "user", "latex"]
    misspellings: []
    action: (input) ->
      @string "``''"
      @left(times=2)
