defmodule CrowWeb.ChatHeaderView do
  use Phoenix.LiveComponent

  def render(assigns) do
    ~H"""
      <div class="relative w-full h-[5rem] rounded-t-xl bg-transparent shadow-lg">
        <div class="flex flex-row w-full h-full rounded-t-xl overflow-hidden">
          <div class="flex flex-row space-x-2 mt-6 ml-5 absolute">
            <div class="mt-auto mb-auto border border-[#007700] rounded-full h-3 w-3 bg-[#005d00]"/>
            <span class="text-[20px] mt-auto mb-auto">Sylus</span>
          </div>
          <div class="w-full h-full">
            <img src="/images/sylus_header.png" class="w-full h-full object-cover"/>
          </div>
        </div>

        <div class="w-[8rem] h-[8rem] border border-[#141414] border-5 rounded-full absolute -bottom-[4rem] mr-3 right-1">
          <img src="/images/sylus_pf.png" class="w-full h-full rounded-full object-cover"/>
        </div>
      </div>
    """
  end
end
