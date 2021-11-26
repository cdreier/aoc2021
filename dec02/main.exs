Code.require_file("lib/files.exs")

defmodule Dec02 do
  import Shortcuts

  def run() do
    byLine("dec02/input.txt", :int) |> IO.inspect()
  end
end

Dec02.run()
