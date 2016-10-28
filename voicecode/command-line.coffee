# Commands.extend "dizzle", ->
#   if @currentApplication() is Settings.os.terminalApplications
#     key "Control", "_"
# scope: Settings.os.terminalApplications

remoteHosts =
  "nyx": "nyx"
  "nicks": "nyx"
  "moroso": "moroso"
  "brava": "bravas"
  "b": "bravas"
  graphics: "graphics"

Package.commands
  "shell-secure":
    spoken: 'shell secure'
    grammarType: 'textCapture'
    description: "either connect to a machine or simply type 'ssh '"
    tags: ["ssh", "terminal"]
    triggerScopes: Settings.os.terminalApplications
    action: (input) ->
      text = ""
      if input?.length
        text = @fuzzyMatch remoteHosts, input.join(' ')
      @string "ssh " + text

Settings['command-line'] =
  shellCommands: {
    "jupiter": "jupyter "
    "jupiter notebook": "jupyter notebook "
    "arsink": "rsync "
    "brew": "brew "
    "brew install": "brew install "
    "brew update": "brew update "
    "brew upgrade": "brew upgrade "
    "grep": "grep "
    "teemux": "tmux "
    "team ox attach": "tmux attach "
    "touch": "touch "
    "team ox": "tmux "
    "vim": "vim "
    "unique": "uniq"
    "pip install ": "pip install "
    less: "less"
    condo: "conda "
    "condo activate": "conda activate "
  }

Settings.os =
  directories: {
    voicecode: "~/voicecode"
    scratch: "/disk/scratch/nsaphra/"
    data: "/afs/inf.ed.ac.uk/group/project/agora/dataset"
  }
