defmodule CrowWeb.RegisterView do
  use Phoenix.LiveView

  def render(assigns) do
    ~H"""
      <div class="h-screen w-screen flex justify-center">
        <div class="flex flex-col justify-center m-auto w-[35rem] h-[40rem] bg-[#141414] rounded-xl">

            <div class="flex flex-col w-3/4 m-auto space-y-2">
            <span class="text-center p-5 text-[30px]">Create an account</span>
              <Components.input field={"email"} type={"text"} label={"Email"}/>
              <Components.input field={"username"} type={"text"} label={"Username"}/>
              <Components.input field={"password"} type={"text"} label={"Password"}/>
              <Components.input field={"passwordCon"} type={"text"} label={"Confirm password"}/>
            </div>
        </div>
      </div>
    """
  end
end
