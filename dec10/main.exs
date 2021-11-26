Code.require_file("lib/files.exs")

defmodule Dec10 do
  import Shortcuts

  def run() do
    byLine("dec10/input.txt", :int) |> IO.inspect()
  end
end

Dec10.run()
