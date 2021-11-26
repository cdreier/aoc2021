Code.require_file("lib/files.exs")

defmodule Dec07 do
  import Shortcuts

  def run() do
    byLine("dec07/input.txt", :int) |> IO.inspect()
  end
end

Dec07.run()
