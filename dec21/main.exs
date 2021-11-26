Code.require_file("lib/files.exs")

defmodule Dec21 do
  import Shortcuts

  def run() do
    byLine("dec21/input.txt", :int) |> IO.inspect()
  end
end

Dec21.run()
