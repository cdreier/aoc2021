defmodule Shortcuts do
  def byLine(filepath) do
    File.read!(filepath)
    |> String.split("\n", trim: true)
  end

  def byLine(dir, :int) do
    byLine(dir)
    |> Enum.map(&String.to_integer/1)
  end

  def byLine(dir, :withRows) do
    byLine(dir)
    |> Stream.map(&String.split(&1, " "))
    |> Enum.to_list()
  end

  def byChar(dir) do
    byLine(dir)
    |> Stream.map(&String.graphemes/1)
    |> Enum.to_list()
  end

  def byChar(dir, :flat) do
    byLine(dir)
    |> Stream.flat_map(&String.graphemes/1)
    |> Enum.to_list()
  end
end
