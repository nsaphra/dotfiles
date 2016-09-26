Package.commands
  "shift-return":
    spoken: "sky turn"
    tags: ["user", "return"]
    repeatable: true
    action: ->
      @key 'return', 'shift'
  "destar":
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
  "alt-return":
    spoken: "alter turn"
    tags: ["user", "modifier"]
    repeatable: true
    action: ->
      @key 'return', 'alt'
