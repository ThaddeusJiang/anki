defmodule Anki.CLI do
  @moduledoc """

  """

  def main(argv) do
    argv
    |> parse_args
    |> process
  end

  def run(argv) do
    parse_args(argv)
  end

  def parse_args(argv) do
    parse = OptionParser.parse(argv, switches: [help: :boolean], aliases: [h: :help])

    case parse do
      {[help: true], _, _} -> :help
      {_, [file], _} -> {file}
      _ -> :help
    end
  end

  def process(:help) do
    IO.puts """
    usage: anki <file>
    """

    System.halt(0)
  end

  def process({file}) do
    Anki.deal(file)
  end

end

