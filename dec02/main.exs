Code.require_file("lib/files.exs")

defmodule Dec02 do
  import Shortcuts
  import Map

  def run() do
    pos =
      byLine("dec02/input.txt", :withRows)
      |> Enum.map(fn [inst, val] -> [inst, String.to_integer(val)] end)
      |> Enum.reduce(%{x: 0, y: 0, aim: 0}, &move/2)

    IO.inspect(pos.x * pos.y)
  end

  def move(["down", val], pos), do: update!(pos, :aim, &(&1 + val))
  def move(["up", val], pos), do: update!(pos, :aim, &(&1 - val))

  def move(["forward", val], pos) do
    pos = update!(pos, :x, &(&1 + val))
    aim = fetch!(pos, :aim)
    update!(pos, :y, &(&1 + val * aim))
  end
end

Dec02.run()
