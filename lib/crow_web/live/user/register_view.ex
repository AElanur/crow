defmodule CrowWeb.RegisterView do
  use Phoenix.LiveView

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
                <Components.input field={"email"} type={"text"} label={"Email"} placeholder={"Email"}/>
                <Components.input field={"username"} type={"text"} label={"Username"} placeholder={"Username"}/>
                <Components.input field={"password"} type={"password"} label={"Password"} placeholder={"Password"}/>
                <Components.input field={"passwordCon"} type={"password"} label={"Confirm password"} placeholder={"Confirm password"}/>
              <div class="flex justify-end pt-5">
                <Components.button name={"Register"}/>
              </div>
            </div>
          </div>
        </div>
      </div>
    """
  end
end
