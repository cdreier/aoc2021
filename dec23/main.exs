Code.require_file("lib/files.exs")

defmodule Dec23 do
  import Shortcuts

  def run() do
    byLine("dec23/input.txt", :int) |> IO.inspect()
  end
end

Dec23.run()
