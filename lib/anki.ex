defmodule Anki do
  @moduledoc """
  Documentation for Anki.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Anki.hello()
      :world

  """
  def hello do
    :world
  end

  def deal(file) do
    {:ok, text} = File.read(file)

    data = text
    |> String.replace("\n", "")

    out = Regex.scan(~r/class="noteText">.+?<\/div>/, data)
    |> Enum.map(fn x -> x |> List.first |> String.replace(~r/class="noteText">/, "") |> String.replace("</div>", "") |> String.trim() end)
    |> Enum.map(fn x -> x <> "\t" <> x <> "\n" end)

    File.write("out.txt", out)
  end
end
