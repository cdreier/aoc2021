Code.require_file("lib/files.exs")

defmodule Dec05 do
  import Shortcuts

  def run() do
    byLine("dec05/input.txt", :int) |> IO.inspect()
  end
end

Dec05.run()
