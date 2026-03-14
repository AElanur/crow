defmodule CrowWeb.SocialList do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
      <div class="h-full bg-[#141414] border-b border-[#181d21] shadow-lg">
        <div class="h-[5rem] flex flex-row space-x-2 ml-2">
          <div class="h-10 w-10 mt-auto mb-auto">
            <Icons.egg_icon/>
          </div>
          <span class="mt-auto mb-auto text-[20px]">Messages</span>
        </div>

        <div class="flex flex-col pl-4 pr-4 space-y-2">
          <span>Pinned</span>
          <div class="flex flex-row w-full space-x-2">
            <div class="w-10 h-10 rounded-full overflow-hidden">
              <img src="/images/sylus_pf.png" class="w-full h-full object-cover"/>
            </div>
            <div class="flex flex-col mt-auto mb-auto w-full">
              <div class="flex flex-row justify-between">
                <span>Sylus</span>
                <span class="text-[14px] mt-auto mb-auto">12:15</span>
              </div>
                <span class="text-[12px]">Did you leave me on read?</span>
            </div>
          </div>
          <span>All messages</span>
        </div>
      </div>
    """
  end
end
