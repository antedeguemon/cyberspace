defmodule Mix.Tasks.Cyberspace.Write do
  use Mix.Task

  def run([output_path]) do
    rendered_html = Cyberspace.render!()
    File.write!(output_path, rendered_html)
  end
end
