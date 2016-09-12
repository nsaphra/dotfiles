# Here you can extend the default settings.
Settings.dragonVersion = 5

Settings.extend "abbreviations",
  shell: "#!/bin/bash"
  "dictionary": "dict"
  "evaluate": "eval"
  pythonbin: "#!/opt/python-devops/bin/python "
  perlbin: "#!/usr/bin/perl"
  "archive": "arXiv"
  "at all": "et. al."
  "auxiliary": "aux"
  "biology": "bio"
  "bio archive": "bioRxiv"
  "bowtie": "bwt"
  "python": "py"
  "filename": "fname"
  "pointer": "ptr"
  "information": "info"
  "evaluation": "eval"
  "vocabulary": "vocab"
  "message": "msg"
  "denominator": "denom"
  "numpy": "np"
  "science": "sci"
  "dimension": "dim"
  "exponent": "exp"
  "histogram": "hist"
  "emphasize": "emph"
  "token": "tok"
  "jupiter": "ipynb"
  "input": "stdin"
  "output": "stdout"
  "index": "idx"
  "window": "win"
  "tensorflow": "TensorFlow"
  "latex": "LaTeX"
  "example": "e.g.,"

Settings.extend "applications",
  find: "Finder"
  chrome: "Google Chrome"
  tunes: "iTunes"
  wynab: "YNAB 4"
  slack: "Slack"
  slacker: "Slack"
  fire: "Firefox"
  skim: "Skim"
  console: "Console"

Settings.extend "translations",
  "cliché": "cliche"
  "latek": "LaTeX"
  "montréal": "montreal"
  "café": "cafe"
  "prend": "print"
  "naïve": "naive"
  "pokémon": "pokemon"

Settings.extend "directories",
  "voicecode": "~/voicecode"

Settings.extend "modes",
  "python": "python"
  "them": "vim"
  "vim": "vim"
  "emacs": "emacs"

Settings.extend "shellCommands",
  "jupiter": "jupyter ",
  "jupiter notebook": "jupyter notebook ",
  "arsink": "rsync ",
  "brew": "brew ",
  "brew install": "brew install ",
  "brew update": "brew update ",
  "brew upgrade": "brew upgrade ",
  "grep": "grep ",
  "teemux": "tmux ",
  "team ox attach": "tmux attach "
  "touch": "touch ",
  "team ox": "tmux "
  "vim": "vim "
  "unique": "uniq"
  "pip install ": "pip install "
  less: "less"
  condo: "conda "
  "condo activate": "conda activate "

Settings.extend "letters",
  m: "meesh"
  x: "gax"

Settings.extend "homonyms", [
  ["cued", "queued"],
  ["queue", "cue", "q"],
  ["jim", "gym"],
  ["waits", "weights"],
  ["and", "end"],
  ["right", "write", "rite"],
  ["colonel", "kernel"]
]
