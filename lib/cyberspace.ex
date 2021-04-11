defmodule Cyberspace do
  require EEx

  def render! do
    "cyberspace"
    |> render_template(
      title: "vammerlo's homepage",
      header: Cyberspace.About.render(),
      sections: [
        Cyberspace.Personal.render(),
        Cyberspace.Posts.render(),
        Cyberspace.Social.render()
      ]
    )
    |> Floki.parse_document!()
    |> Floki.raw_html()
  end

  def render_template(file, data) do
    EEx.eval_file("lib/cyberspace/templates/#{file}.html.eex", data)
  end
end
