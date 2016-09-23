scope: 'atom'

Package.commands
  "add-project-file":
    spoken: "add project file"
    action: ->
      @runAtomCommand "trigger", "tree-view:add-file"
