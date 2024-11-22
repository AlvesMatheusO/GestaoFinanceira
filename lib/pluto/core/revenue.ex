defmodule Pluto.Core.Revenue do
  @moduledoc false

  use Ecto.Schema

  schema "revenues" do
    field(:title, :string)
    field(:description, :string)
    field(:price, :integer, default: 0)

    timestamps()
  end

  # Validation
  def changeset(model, params) do
    model
    |> Ecto.Changeset.cast(params, [:title, :description, :price])
    |> Ecto.Changeset.validate_required([:title, :description])
  end

end
