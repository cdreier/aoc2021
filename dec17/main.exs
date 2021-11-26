Code.require_file("lib/files.exs")

defmodule Dec17 do
  import Shortcuts

  def run() do
    byLine("dec17/input.txt", :int) |> IO.inspect()
  end
end

Dec17.run()
