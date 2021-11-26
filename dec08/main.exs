Code.require_file("lib/files.exs")

defmodule Dec08 do
  import Shortcuts

  def run() do
    byLine("dec08/input.txt", :int) |> IO.inspect()
  end
end

Dec08.run()
