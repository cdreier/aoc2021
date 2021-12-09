Code.require_file("lib/files.exs")

defmodule Dec04 do
  import Enum

  def run() do
    {nums, boards} =
      File.read!("dec04/input.txt") |> String.split("\n", trim: false) |> to_list() |> split(1)

    numbers = at(nums, 0) |> String.split(",", trim: true) |> to_list()

    IO.inspect([numbers, boards])
  end
end

defmodule Board do
end

Dec04.run()
