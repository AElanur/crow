defmodule CrowWeb.ProfileView do
  use Phoenix.LiveView

  def render(assigns) do
    ~H"""
    <div class="flex flex-col w-1/2 m-auto p-5">
      <div class="flex flex-col overflow-hidden rounded-xl">
        <div class="flex-1 bg-[#733E6D] p-5">
          <div class="rounded-full text-center m-auto w-25 h-25 border border-white">

          </div>
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

          <div class="flex flex-row pt-2 pb-10 space-x-5">
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
