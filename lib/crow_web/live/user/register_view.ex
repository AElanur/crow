defmodule CrowWeb.RegisterView do
  require Logger
  use Phoenix.LiveView
  alias Crow.CrowUsers.CrowUser
  alias CrowWeb.CrowUserController

   def mount(_params, _session, socket) do
    changeset = CrowUser.changeset(%CrowUser{}, %{})

    {:ok, assign(socket, form: to_form(changeset))}
  end


  @spec render(any()) :: Phoenix.LiveView.Rendered.t()
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
              <.form
                class="flex flex-col space-y-2"
                as={:crow_user}
                for={@form}
                phx-submit="submit"
                phx-change="validate">
                <Components.input
                  field={@form[:crow_mail]}
                  type={"text"}
                  label={"Email"}
                  placeholder={"Email"}
                  maxlength={40}
                />

                <Components.input
                  field={@form[:crow_name]}
                  type={"text"}
                  label={"Username"}
                  placeholder={"Username"}
                  maxlength={20}
                  pattern="^[a-zA-Z0-9_]{3,20}$"/>

                <Components.input
                  field={@form[:crow_password]}
                  type={"password"} label={"Password"}
                  placeholder={"Password"}
                  minlength={8}/>

                <Components.input
                  field={@form[:password]}
                  type={"password"}
                  label={"Confirm password"}
                  placeholder={"Confirm password"}
                  minlength={8}/>
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

  def handle_event("validate", %{"crow_user" => params}, socket) do
    changeset =
      %CrowUser{}
      |> CrowUser.changeset(params)
      |> Map.put(:action, :validate)

    {:noreply, assign(socket, form: to_form(changeset))}
  end


  defp create_user(socket, :new, user_params) do
    case CrowUserController.register_user(user_params) do
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
