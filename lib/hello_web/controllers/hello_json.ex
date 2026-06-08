defmodule HelloWeb.HelloJSON do
  def greet(%{"name" => name}) do
    %{
      greeting: "привет #{name}!"
    }
  end
end
