Package.commands
  "shift-return":
    spoken: "sky turn"
    tags: ["user", "return"]
    repeatable: true
    action: ->
      @key 'return', 'shift'
  "destar":
    spoken: "destar"
    tags: ["symbol", "user"]
    action: ->
      @string " * "
  "verby":
    spoken: "verby"
    tags: ["user", "symbol"]
    action: ->
      @string "``"
      @left(1)
  "sterly":
    spoken: "sterly"
    tags: ["user", "symbol"]
    action: ->
      @string "£"
  "alt-return":
    spoken: "alter turn"
    tags: ["user", "modifier"]
    repeatable: true
    action: ->
      @key 'return', 'alt'
