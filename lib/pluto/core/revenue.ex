defmodule Pluto.Core.Revenue do
  @moduledoc false


  use Ecto.Schema

  schema "revenues" do
    field :title, :string
    field :description, :string
    field :price, :integer, default: 0

    timestamps()
  end


end
