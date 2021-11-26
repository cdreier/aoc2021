Code.require_file("lib/files.exs")

defmodule Dec20 do
  import Shortcuts

  def run() do
    byLine("dec20/input.txt", :int) |> IO.inspect()
  end
end

Dec20.run()
