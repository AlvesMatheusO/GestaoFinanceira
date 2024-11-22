defmodule Pluto.Repo.Migrations.CreateTableRevenues do
  use Ecto.Migration

  def change do
    create table("revenues") do
      add :title, :string
      add :description, :text
      add :price, :integer, default: 0

      timestamps()
    end
  end
end
