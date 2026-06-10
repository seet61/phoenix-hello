defmodule HelloWeb.ThermostatLive do
  use HelloWeb, :live_view

  def render(assigns) do
    ~H"""
    Текущая температура: {@temperature}°С <br /> <button phx-click="inc_temperature">+</button>
    """
  end

  def mount(_params, _session, socket) do
    temperature = 21
    {:ok, assign(socket, :temperature, temperature)}
  end

  def handle_event("inc_temperature", _params, socket) do
    {:noreply, update(socket, :temperature, &(&1 + 1))}
  end
end
