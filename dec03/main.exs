Code.require_file("lib/files.exs")

defmodule Dec03 do
  import Shortcuts
  import Enum

  def run() do
    check =
      byChar("dec03/input.txt")
      |> zip()
      |> map(&Tuple.to_list/1)
      |> map(&frequencies/1)
      |> map(&checkGamma/1)

    res =
      byChar("dec03/input.txt")
      |> reduce_while([], fn i, acc ->
        if at(i, 0) == at(check, 0) do
          acc + i
        else
          acc
        end
      end)
      |> IO.inspect()

    # |> filter(fn i -> at(i, 0) == at(check, 0) end)

    IO.inspect(length(res))
  end

  # def reducer(list, acc, check) do
  #   at(list, 0) == at(check, 0)
  # end

  def part1() do
    input =
      byChar("dec03/input.txt")
      |> zip()
      |> map(&Tuple.to_list/1)
      |> map(&frequencies/1)

    gamma =
      input
      |> map(&checkGamma/1)
      |> join()
      |> String.to_integer(2)

    epsilon =
      input
      |> map(&checkEpsilon/1)
      |> join()
      |> String.to_integer(2)

    IO.inspect(gamma * epsilon)
  end

  def checkGamma(%{"0" => zeros, "1" => ones}) when zeros > ones, do: "0"
  def checkGamma(%{"0" => zeros, "1" => ones}) when zeros < ones, do: "1"
  def checkEpsilon(%{"0" => zeros, "1" => ones}) when zeros > ones, do: "1"
  def checkEpsilon(%{"0" => zeros, "1" => ones}) when zeros < ones, do: "0"
end

Dec03.run()
