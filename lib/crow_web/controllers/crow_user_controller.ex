defmodule CrowWeb.CrowUserController do
  use CrowWeb, :controller
  alias Crow.CrowUsers
  alias Crow.Guardian

  def register_user(user_params) do
    CrowUsers.create_user(user_params)
  end

  def sign_in(conn, %{"email" => email, "password" => password}) do
    case CrowUsers.authenticate_user(email, password) do
      {:ok, user} ->
        {_, token,_} = Guardian.encode_and_sign(user)

        conn
        |> put_status(:ok)
        |> render("auth.json", token: token)

        _ ->
          unauthorized(conn)
    end
  end

  def sign_in(user) do
    {:ok, _access_token, _claims} = Guardian.encode_and_sign(user, %{}, token_type: "access")
    {:ok, _refresh_token, _claims} = Guardian.encode_and_sign(user, %{}, token_type: "refresh")
  end

  def unauthorized(_conn) do
    # TBI
  end
end
