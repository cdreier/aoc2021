Code.require_file("lib/files.exs")

defmodule Dec18 do
  import Shortcuts

  def run() do
    byLine("dec18/input.txt", :int) |> IO.inspect()
  end
end

Dec18.run()
