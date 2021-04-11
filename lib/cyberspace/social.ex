defmodule Cyberspace.Social do
  defmodule Item do
    defstruct [:service, :username, :url]
  end

  def build do
    [
      %Item{
        service: "GitHub",
        username: "antedeguemon",
        url: "https://github.com/antedeguemon"
      },
      %Item{
        service: "LinkedIn",
        username: "vammerlo",
        url: "https://www.linkedin.com/in/vammerlo"
      },
      %Item{
        service: "Twitter",
        username: "@vammerlo",
        url: "https://twitter.com/vammerlo"
      },
      %Item{
        service: "E-mail",
        username: "vammerlo [at] ufrgs.br",
        url: "#nomailto"
      },
      %Item{
        service: "Public PGP key",
        username: "here",
        url: "pgp.txt"
      }
    ]
  end

  def render do
    Cyberspace.render_template("social", items: build())
  end
end
