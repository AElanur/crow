defmodule Components do
  use Phoenix.Component

  attr :field, :any, required: true
  attr :label, :string, default: nil
  attr :type, :string, default: "text"
  attr :placeholder, :string, default: "placeholder"
  attr :rest, :global

  def input(assigns) do
    ~H"""
      <label><%= @label %></label>
      <input
        class="bg-[#272728] shadow-xl h-[40px] px-3 rounded-sm"
        type={@type}
        name={@field.name}
        value={@field.value}
        placeholder={@placeholder}/>
    """
  end

  attr :rest, :global, include: ~w(form)
  attr :name, :string, default: "submit"
  def button(assigns) do
    ~H"""
      <input {@rest} type="submit" value={@name} class="bg-[#272728] w-full h-[3rem]  rounded-sm"/>
    """
  end
end
