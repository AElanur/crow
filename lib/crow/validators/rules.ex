defmodule Crow.Validators.Rules do
  @rules %{
    email: %{
      regex: ~r/^[^\s]+@[^\s]+\.[^\s]+$/,
      message: "This is not a valid email"
    },
    username: %{
      regex: ~r/^[a-zA-Z0-9_]{3,20}$/,
      message: "This is not a valid username"
    }
  }

  def get(field), do: @rules[field]
end
