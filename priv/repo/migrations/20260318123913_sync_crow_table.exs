defmodule Crow.Repo.Migrations.CrowUserTable do
  use Ecto.Migration

  def change do
    create table(:crow_user, primary_key: false) do
      add :crow_id, :bigserial, [primary_key: true]
      add :crow_name, :string, size: 40
      add :crow_password, :string, size: 120
      add :crow_mail, :string, size: 50
      timestamps()
    end
  end
end
