defmodule CrowWeb.MessageBox do
  use Phoenix.LiveComponent
  require Logger

  def render(assigns) do
    ~H"""
    <form phx-submit="send_message" phx-target={@myself}>
      <div class="flex flex-row p-2 h-14 rounded-lg bg-[#272728] text-white w-full">
        <Icons.microphone_icon />
        <input
          type="text"
          placeholder="Type a message..."
          phx-change="typing"
          name="message"
          value={@message}
          class="flex-1 mx-2 outline-none bg-transparent"
        />
        <Icons.image_icon />
        <Icons.smile_icon />
      </div>
    </form>
    """
  end

  def mount(socket) do
    {:ok, assign(socket, message: "")}
  end

  def update(_assigns, socket) do
    {:ok, assign(socket, message: "")}
  end

  def handle_event("typing", %{"message" => message}, socket) do
    form = to_form(%{message: message})
    {:noreply, assign(socket, form: form)}
  end

  def handle_event("send_message", %{"message" => message}, socket) do
  Logger.info("Message sent: #{message}")
  {:noreply, assign(socket, message: "")}
end


end
