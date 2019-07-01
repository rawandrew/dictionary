defmodule Dictionary do

  alias Dictionary.WordList

  defdelegate random_word(), to: WordList
  defdelegate random_words(), to: WordList
end
