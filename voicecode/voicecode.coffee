j# commands and settings for handling voicecode modification and navigation

Package.commands
  "show-last-utterance":
    description: "clean up the log & only output to things => what dragon heard & what voice code interpreted"
    spoken: "show last utterance"
    utilities = require 'util'
    Events.suppressedLogEntries = [/^\S/]
    Events._logEvents = true
    Events.on 'chainShouldExecute', (recognition) ->
      Events.once 'chainParsed', (_args) ->
        Events.notify " dragon: #{recognition}"
        Events.notify " vc: " + utilities.inspect _args
