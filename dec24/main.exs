Code.require_file("lib/files.exs")

defmodule Dec24 do
  import Shortcuts

  def run() do
    byLine("dec24/input.txt", :int) |> IO.inspect()
  end
end

Dec24.run()
