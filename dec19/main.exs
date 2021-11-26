Code.require_file("lib/files.exs")

defmodule Dec19 do
  import Shortcuts

  def run() do
    byLine("dec19/input.txt", :int) |> IO.inspect()
  end
end

Dec19.run()
