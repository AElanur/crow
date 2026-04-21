defmodule Crow.CrowUsers.CrowUser do
  use Ecto.Schema
  import Ecto.Changeset
  alias Crow.Validators.Rules

  @primary_key {:crow_id, :id, autogenerate: true}
  schema "crow_user" do
    field :crow_name, :string
    field :crow_password, :string
    field :crow_mail, :string
    timestamps(type: :utc_datetime)
  end

  defp apply_rule(changeset, field, rule_key) do
    rule = Rules.get(rule_key)
    validate_format(changeset, field, rule.regex, message: rule.message)
  end


  @doc false
  def changeset(crow_user, attrs) do
    crow_user
    |> cast(attrs, [:crow_name, :crow_mail, :crow_password])
    |> validate_required([:crow_name, :crow_password, :crow_mail])
    |> apply_rule(:crow_mail, :email)
    |> apply_rule(:crow_name, :username)
    |> hash_password()
  end

  defp hash_password(changeset) do
    if password = get_change(changeset, :crow_password) do
      put_change(
        changeset,
        :crow_password,
        Argon2.hash_pwd_salt(password)
      )
    else
      changeset
    end
  end
end
