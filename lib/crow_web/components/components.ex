defmodule Components do
  use Phoenix.Component

  attr :field, :any, required: true
  attr :label, :string, default: nil
  attr :type, :string, default: "text"
  attr :placeholder, :string, default: "placeholder"
  attr :maxlength, :integer, default: nil
  attr :minlength, :integer, default: 8
  attr :pattern, :string, default: nil
  attr :rest, :global

  def input(assigns) do
    ~H"""
      <div class="flex flex-col space-y-1">
        <label><%= @label %></label>
        <input
          class="bg-[#272728] shadow-xl h-[40px] px-3 rounded-sm"
          type={@type}
          name={@field.name}
          value={@field.value}
          placeholder={@placeholder}
          maxlength={@maxlength}
          pattern={@pattern}
          {@rest}
        />

        <%= for {msg, _} <- @field.errors do %>
        <p class="text-red-500 text-sm"><%= msg %></p>
        <% end %>
      </div>
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
