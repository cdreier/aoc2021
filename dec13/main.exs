Code.require_file("lib/files.exs")

defmodule Dec13 do
  import Shortcuts

  def run() do
    byLine("dec13/input.txt", :int) |> IO.inspect()
  end
end

Dec13.run()
