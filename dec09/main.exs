Code.require_file("lib/files.exs")

defmodule Dec09 do
  import Shortcuts

  def run() do
    byLine("dec09/input.txt", :int) |> IO.inspect()
  end
end

Dec09.run()
