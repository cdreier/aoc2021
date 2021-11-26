Code.require_file("lib/files.exs")

defmodule Dec04 do
  import Shortcuts

  def run() do
    byLine("dec04/input.txt", :int) |> IO.inspect()
  end
end

Dec04.run()
