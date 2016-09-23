Package.commands
  "sky-turn":
    spoken: "sky turn"
    description: "shift enter"
    tags: ["user", "return"]
    repeatable: true
    action: ->
      @key 'return', 'shift'
  "destar"
    tags: ["symbol", "user"]
    action: ->
      @string " * "
  "verby":
    tags: ["user", "symbol"]
    action: ->
      @string "``"
      @left(1)
  "sterly":
    tags: ["user", "symbol"]
    action: ->
      @string "£"
