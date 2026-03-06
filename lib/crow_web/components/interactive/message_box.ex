defmodule MessageBox do
  use Phoenix.Component

  def message_box(assigns) do
    ~H"""
    <div class="flex flex-row p-2 h-14 rounded-lg bg-[#282c4d] text-white w-full">
      <Icons.microphone_icon/>
      <textarea
        class="w-full resize-none focus:outline-none px-2 py-2"
        placeholder="Type something"/>
      <Icons.image_icon/>
      <Icons.smile_icon/>
    </div>
    """
  end
end
