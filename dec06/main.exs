Code.require_file("lib/files.exs")

defmodule Dec06 do
  import Shortcuts

  def run() do
    byLine("dec06/input.txt", :int) |> IO.inspect()
  end
end

Dec06.run()
