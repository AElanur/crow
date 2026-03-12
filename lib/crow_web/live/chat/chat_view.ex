defmodule CrowWeb.ChatView do
  use Phoenix.LiveView
  alias Crow.Chat

  def mount(_params, _session, socket) do
    his_messages = Chat.list_his_messages()

    {:ok,
      socket
      |> assign(:his_messages, his_messages)}
  end

  def render(assigns) do
    ~H"""
        <div class="flex flex-row w-screen">
          <div class="w-[15rem]">
          <.live_component module={CrowWeb.SocialList} id="social_list"/>
          </div>
          <div class="flex flex-col h-screen flex-1 p-5">
            <.live_component module={CrowWeb.ChatHeaderView} id="chat_header"/>
            <div class="w-full h-full rounded-b-xl overflow-hidden bg-[#141414]">
              <div class="flex flex-col space-y-4 p-3 h-full">
                  <%= for msg <- @his_messages do %>
                  <div class="max-w-xs p-5 bg-[#272728] text-white rounded-t-lg rounded-br-lg text-black">
                      <div class="flex justify-start">
                          <%= msg.content %>
                      </div>
                      <div class="text-sm flex justify-end">
                          <%= msg.time_stamp %>
                      </div>
                  </div>
                <% end %>

                <div class="p-2 mt-auto">
                    <.live_component module={CrowWeb.MessageBox} id="message-box" />
                </div>
              </div>
            </div>
          </div>
        </div>
    """
  end
end
