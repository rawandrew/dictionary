defmodule Dictionary.WordList do

  def word_list() do
    "../../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)
  end

  def random_word(word_list) do
    word_list
    |> Enum.random()
  end
end