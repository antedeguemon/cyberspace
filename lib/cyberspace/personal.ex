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
        title: "Poema de setes faces, Drummond",
        url: "stuff/faces.html"
      },
      %Item{
        title: "Cool Elixir talks",
        url: "https://www.youtube.com/watch?v=6U7cLUygMeI&list=PLL59e5Us1WHlMPi6Z1N-518deN9lMG-lH"
      },
      %Item{
        title: "Cool Elixir talks that I have not watched yet",
        url: "https://www.youtube.com/watch?v=JvBT4XBdoUE&list=PLL59e5Us1WHmKLl19IRTK0Rg2cQ44dtmK"
      },
      %Item{
        title: "Cool distributed systems presentations",
        url: "https://www.youtube.com/watch?v=u-b4rJ0RTrk&list=PLL59e5Us1WHlIIt3DGjsbkAuTpejsrQgE"
      },
      %Item{
        title: "My uncool .vimrc",
        url: "stuff/vimrc.txt"
      },
      %Item{
        title: "My starred repositories in GitHub",
        url: "https://github.com/antedeguemon?tab=stars"
      }
    ]
  end

  def render do
    Cyberspace.render_template("personal", items: build())
  end
end
