defmodule Crow.CrowUsers.CrowUser do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:crow_id, :id, autogenerate: true}
  schema "crow_user" do
    field :crow_name, :string
    field :crow_password, :string
    field :crow_mail, :string
    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(crow_user, attrs) do
    mapped_attrs = %{
      crow_name: attrs["username"],
      crow_mail: attrs["email"],
      crow_password: attrs["password"]
    }

    crow_user
    |> cast(mapped_attrs, [:crow_name, :crow_mail, :crow_password])
    |> validate_required([:crow_name, :crow_password, :crow_mail])
  end
end
