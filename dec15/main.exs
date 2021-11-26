Code.require_file("lib/files.exs")

defmodule Dec15 do
  import Shortcuts

  def run() do
    byLine("dec15/input.txt", :int) |> IO.inspect()
  end
end

Dec15.run()
