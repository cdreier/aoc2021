Code.require_file("lib/files.exs")

defmodule Dec14 do
  import Shortcuts

  def run() do
    byLine("dec14/input.txt", :int) |> IO.inspect()
  end
end

Dec14.run()
