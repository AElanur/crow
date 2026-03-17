defmodule Components do
  use Phoenix.Component

  attr :field, :any, required: true
  attr :label, :string, default: nil
  attr :type, :string, default: "text"
  attr :rest, :global

  def input(assigns) do
    ~H"""
      <label><%= @label %></label>
      <input class="border h-[40px] px-3 rounded-sm" type="text"/>
    """
  end
end
