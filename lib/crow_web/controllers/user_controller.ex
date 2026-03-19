defmodule CrowWeb.UserController do
  use CrowWeb, :controller
  alias Crow.CrowUsers

  def register_user(user_params) do
    CrowUsers.create_user(user_params)
  end
end
