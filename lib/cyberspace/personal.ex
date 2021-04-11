defmodule Cyberspace.Personal do
  defmodule Item do
    defstruct [:title, :url]
  end

  def build do
    [
      %Item{
        title: "Monologo de Segismundo, Calderon de la Barca",
        url: "stuff/monologo.html"
      },
      %Item{
        title: "Cool Elixir talks",
        url: "https://www.youtube.com/watch?v=6U7cLUygMeI&list=PLL59e5Us1WHlMPi6Z1N-518deN9lMG-lH"
      },
      %Item{
        title: "Cool Elixir talks that I have not watched yet",
        url: "https://www.youtube.com/watch?v=JvBT4XBdoUE&list=PLL59e5Us1WHmKLl19IRTK0Rg2cQ44dtmK"
      }
    ]
  end

  def render do
    Cyberspace.render_template("personal", items: build())
  end
end
