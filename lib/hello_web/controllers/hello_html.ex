defmodule HelloWeb.HelloHTML do
  use HelloWeb, :html

  embed_templates "hello_html/*"

  attr :messanger, :string, required: true

  def greet(assigns) do
    ~H"""
    <h2>Привет от {@messanger}!</h2>
    """
  end
end
