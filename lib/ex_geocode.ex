defmodule ExGeocode do
  @moduledoc """
  An Elixir API client for the Google Geocode API

  ## Usage

  ```
  def deps
    [{:ex_geocode, "~> 0.1"}]
  ```

  Add the `:ex_geocode` application as your list of applications in `mix.exs`:

  ```elixir
  def applications do
    [applications: [:logger, :ex_geocode]]
  end
  ```
  """

  use Application
  alias ExGeocode.Config

  def start(_,_) do
    import Supervisor.Spec, warn: false

    children = []

    opts = [strategy: :one_for_one, name: ExGeocode.Supervisor]
    Supervisor.start_link(children, opts)
  end

end
