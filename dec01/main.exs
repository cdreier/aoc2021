Code.require_file("lib/files.exs")

defmodule Dec01 do
  import Shortcuts

  def run() do
    byLine("dec01/input.txt", :int) |> IO.inspect()
  end
end

Dec01.run()
