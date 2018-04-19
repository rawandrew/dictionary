# Dictionary

This is a tiny application that is meant to be used as a dependency in a hangman game.

All it does is it provides a random word from a dictionary.

## Installation

To add it as a dependency to a project, all you have to do is use the URL of this github repo:

```elixir
def deps do
  [
    {:dictionary, github: "rawandrew/dictionary"}
  ]
end
```

