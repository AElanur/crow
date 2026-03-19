defmodule CrowWeb.RegisterView do
  require Logger
  use Phoenix.LiveView

  alias CrowWeb.UserController

   def mount(_params, _session, socket) do
    form =
      to_form(%{
        "email" => "",
        "username" => "",
        "password" => "",
        "password_confirmation" => ""
      })

      {:ok, assign(socket, form: form)}
    end

  def render(assigns) do
    ~H"""
      <div class="h-screen w-screen ">
        <div class="flex flex-col items-center h-full w-full justify-center">
          <div class="flex justify-center w-[35rem] h-[3rem] relative">
            <div class="w-[8rem] h-[8rem] top-[8rem] rounded-full border-[15px] bg-[#1D1D1D] border-[#141414]">
              <Icons.egg_icon/>
            </div>
          </div>
          <div class="flex flex-col justify-center w-[35rem] h-[40rem] bg-[#141414] rounded-xl">
            <div class="flex flex-col w-3/4 m-auto space-y-2">
              <span class="text-center p-5 text-[30px]">Create an account</span>
              <.form class="flex flex-col space-y-2" as={:user} for={@form} phx-submit="submit">
                <Components.input field={@form[:email]} type={"text"} label={"Email"} placeholder={"Email"}/>
                <Components.input field={@form[:username]} type={"text"} label={"Username"} placeholder={"Username"}/>
                <Components.input field={@form[:first_password]} type={"password"} label={"Password"} placeholder={"Password"}/>
                <Components.input field={@form[:password]} type={"password"} label={"Confirm password"} placeholder={"Confirm password"}/>
              <div class="flex justify-end pt-5">
                <Components.button name={"Register"}/>
              </div>
              </.form>
            </div>
          </div>
        </div>
      </div>
    """
  end

  def handle_event("submit", params, socket) do
    action = socket.assigns.live_action || :new
    create_user(socket, action, params)
  end

  defp create_user(socket, :new, user_params) do
    case UserController.register_user(user_params) do
      {:ok, _user} ->
        {:noreply,
         socket
         |> put_flash(:info, "User created successfully")
         |> redirect(to: "/")}

      {:error, %Ecto.Changeset{} = changeset} ->
        {:noreply, assign(socket, form: to_form(changeset))}
    end
  end
end
