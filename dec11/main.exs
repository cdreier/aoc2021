Code.require_file("lib/files.exs")

defmodule Dec11 do
  import Shortcuts

  def run() do
    byLine("dec11/input.txt", :int) |> IO.inspect()
  end
end

Dec11.run()
