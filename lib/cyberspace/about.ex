defmodule Cyberspace.About do
  defstruct [:title, :description, :extra]

  def build do
    %__MODULE__{
      title: "vammerlo's page in the cyberspace",
      description: [
        "Ohayo! I am a computer science student at UFRGS. My main interests are functional programming and distributed systems.<br>",
        "Apart from computers I am into Pepsi, Rubik's cubes and dogs (<a href=\"assets/better_tesla_pic.jpg\">here</a> is a pic of my dog, Tesla)."
      ],
      extra: "<img src=\"assets/me.png\" width=\"150\" /><p><i>Me and lots of Pepsi circa 2000 before robots.</i></p>"
    }
  end

  def render do
    Cyberspace.render_template("about", about: build())
  end
end
