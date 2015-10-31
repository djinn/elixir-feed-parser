defmodule ElixirFeedParser.Mixfile do
  use Mix.Project

  def project do
    [app: :elixir_feed_parser,
     version: "0.0.1",
     elixir: "~> 1.0",
     description: description,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger, :xmerl]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    []
  end

  defp description do
    """
    An Elixir Atom/RSS2 feed parser.
    """
  end

  def package do
    [
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/fdietz/elixir-feed-parser"}
    ]
  end
end