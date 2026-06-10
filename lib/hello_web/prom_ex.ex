defmodule HelloWeb.PromEx do
  use PromEx, otp_app: :hello

  @impl true
  def plugins do
    [
      {
        PromEx.Plugins.Phoenix,
        PromEx.Plugins.PhoenixLiveView,
        endpoint: HelloWeb.Endpoint, router: HelloWeb.Router, event_prefix: [:endpoint, :router]
      }
    ]
  end

  @impl true
  def dashboards do
    [
      {:prom_ex, "phoenix.json"},
      {:prom_ex, "phoenix_live_view.json"}
    ]
  end
end
