Code.require_file("lib/files.exs")

defmodule Dec12 do
  import Shortcuts

  def run() do
    byLine("dec12/input.txt", :int) |> IO.inspect()
  end
end

Dec12.run()
