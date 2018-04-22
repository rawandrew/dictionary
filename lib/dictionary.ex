defmodule Dictionary do

  defdelegate start(), to: Dictionary.WordList, as: :word_list
  defdelegate random_word(), to: Dictionary.WordList

end
