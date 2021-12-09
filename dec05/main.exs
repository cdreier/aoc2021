Code.require_file("lib/files.exs")

defmodule Dec05 do
  import Shortcuts

  def run() do
    byLine("dec05/input.txt")
    |> Stream.map(fn e ->
      String.split(e, " -> ")
      |> Stream.map(fn str ->
        String.split(str, ",") |> Stream.map(&String.to_integer/1) |> Enum.to_list()
      end)
      |> Enum.to_list()
    end)
    |> Stream.filter(&filterCond/1)
    |> Enum.to_list()
    |> IO.inspect()
  end

  def drawVetical(map, [[same, y1], [same, y2]]) do
    [y1..y2]
    |> Stream.each(fn y ->
      nil
      # Map.update(map, same, [], &updateList(&1, y))
    end)
  end

  def filterCond([[x1, y1], [x2, y2]]), do: x1 == x2 || y1 == y2
  def filterCond([_, _]), do: false
end

Dec05.run()
