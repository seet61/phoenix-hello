defmodule HelloWeb.PromEx do
  use PromEx, otp_app: :hello

  @impl true
  def plugins do
    [
      {
        PromEx.Plugins.Phoenix,
        endpoint: HelloWeb.Endpoint, router: HelloWeb.Router
      }
    ]
  end

  @impl true
  def dashboards do
    [
      {:prom_ex, "phoenix.json"}
    ]
  end
end
