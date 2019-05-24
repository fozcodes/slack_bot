defmodule SlackBot.Mixfile do
  use Mix.Project

  def project do
    [app: :slack_bot,
     version: "0.0.1",
     elixir: "~> 1.5",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :trot]]
  end

  defp deps do
    [
      {:poison, "~> 1.4"},
      {:trot, github: "hexedpackets/trot"},
    ]
  end
end
