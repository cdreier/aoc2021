Code.require_file("lib/files.exs")

defmodule Dec01 do
  import Shortcuts
  import Enum

  def run() do
    byLine("dec01/input.txt", :int)
    |> part2()
  end

  def part2(input) do
    input
    |> chunk_every(3, 1)
    |> map(&sum(&1))
    |> part1()
  end

  def part1(input) do
    input
    |> chunk_every(2, 1)
    |> Stream.filter(&(length(&1) == 2))
    |> Stream.filter(&(at(&1, 0) < at(&1, 1)))
    |> to_list()
    |> count()
    |> IO.inspect()
  end
end

Dec01.run()
