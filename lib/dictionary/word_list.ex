defmodule Dictionary.WordList do

  @me __MODULE__

  def start_link() do
    Agent.start_link(&word_list/0, name: @me)
  end

  def word_list() do
    "../../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!()
    |> String.split(~r/\n/)
  end

  def random_word() do
    Agent.get(@me, &Enum.random/1)
  end

  def random_words(n_words \\ 1) do
    Agent.get(@me, & &1)
    |> Enum.take_random(n_words)
  end
end
