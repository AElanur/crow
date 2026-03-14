defmodule CrowWeb.MenuBar do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
      <div class="h-full bg-[#141414] border-b border-[#181d21] shadow-lg border-r-[1px]">
        <div class="flex flex-col h-full">
          <div class="h-[5rem] flex">
            <div class="w-10 h-10 m-auto rounded-full overflow-hidden border border-[#181d21]">
              <img src="/images/sylus.png" class="w-full h-full object-cover"/>
            </div>
          </div>

          <div class="flex h-full justify-center">
            <div class="mt-auto mb-auto flex flex-col space-y-3">
              <div class="w-8 h-8">
                <Icons.murder_icon />
              </div>
              <div class="w-8 h-8">
                <Icons.message_icon />
              </div>
              <div class="w-8 h-8">
                <Icons.form_icon />
              </div>
            </div>

          </div>
        </div>
      </div>
    """
  end
end
