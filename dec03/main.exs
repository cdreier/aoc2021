Code.require_file("lib/files.exs")

defmodule Dec03 do
  import Shortcuts

  def run() do
    byLine("dec03/input.txt", :int) |> IO.inspect()
  end
end

Dec03.run()
