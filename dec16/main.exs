Code.require_file("lib/files.exs")

defmodule Dec16 do
  import Shortcuts

  def run() do
    byLine("dec16/input.txt", :int) |> IO.inspect()
  end
end

Dec16.run()
