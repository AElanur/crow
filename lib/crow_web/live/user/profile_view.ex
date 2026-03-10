defmodule CrowWeb.ProfileView do
  use Phoenix.LiveView

  def render(assigns) do
    ~H"""
    <div class="flex flex-col w-1/2 m-auto p-5 ">
      <div class="flex flex-col overflow-hidden rounded-xl">
        <div class="flex justify-center bg-[#733E6D] justify-center block h-[8rem] relative justify-center">
          <img src="/images/sylus_wp.png" class="w-full h-full object-cover" alt="Profile Wallpaper"/>
          <div class="rounded-full border-4 border-[#1A1F25] text-center absolute mt-22 w-25 h-25 border">
            <img src="/images/sylus.png" class="w-full h-full rounded-full object-cover" alt="Profile"/>
          </div>
        </div>

        <div class="h-[8rem] bg-[#1A1F25]">
          <span>
            Talon
          </span>
        </div>

        <div class="flex flex-col flex-1 bg-[#1A1F25] space-y-2 p-3 divide-y divide-[#14181D]">
          <div class="flex flex-row pb-3">
              <div class="flex flex-col flex-1">
                <span class="text-sm text-[#CBD5E1]">Interests</span>
                <span class="text-xs text-[#CBD5E1]">Games</span>
              </div>
              <div class="flex flex-col flex-1">
                <span class="text-sm text-[#CBD5E1]">From</span>
                <span class="text-xs text-[#CBD5E1]">the Netherlands</span>
              </div>
              <div class="flex flex-col flex-1">
                <span class="text-sm text-[#CBD5E1]">Joined</span>
                <span class="text-xs text-[#CBD5E1]">March 2026</span>
              </div>
          </div>

          <div class="flex flex-row pt-2 pb-8 space-x-5">
            <div class="flex flex-row border border-[#14181D] shadow-lg p-2 w-full">
              <div class="w-8 h-8">
                <Icons.microphone_icon/>
              </div>
              <span class="text-xs text-left mt-auto mb-auto text-[#CBD5E1]">Socials 1</span>
            </div>
            <div class="flex flex-row border border-[#14181D] shadow-lg p-2 w-full">
              <div class="w-8 h-8">
                <Icons.microphone_icon/>
              </div>
              <span class="text-xs text-left mt-auto mb-auto text-[#CBD5E1]">Socials 2</span>
            </div>
          </div>
        </div>
      </div>
      </div>
    """
  end
end
