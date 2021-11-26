Code.require_file("lib/files.exs")

defmodule Dec22 do
  import Shortcuts

  def run() do
    byLine("dec22/input.txt", :int) |> IO.inspect()
  end
end

Dec22.run()
