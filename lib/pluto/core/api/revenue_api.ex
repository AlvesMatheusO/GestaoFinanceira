defmodule Pluto.Core.Revenue.Api do
  @moduledoc false

  alias Pluto.Repo
  alias Pluto.Core.Revenue

  import Ecto.Query

  # get All revenues
  def all do
    Repo.all(Revenue)
  end

  # get ID
  def get(id) do
    Repo.get(Revenue, id)

    |> case do
      nil -> {:error, :not_found}
      revenue -> {:ok, revenue}
    end
  end

  # get by
  def get_by(where) do
    from(Revenue)
    |> where(^where)
    |> Repo.one()
  end

  # create revenue
  def insert(params) do
    %Revenue{}
    |> Revenue.changeset(params)
    |> Repo.insert()
  end

  # delete revenue
  def delete(id) do
    case get(id) do
      {:ok, revenue} -> Repo.delete(revenue)
      nil -> nil
    end
  end

  # edit revenue
  def update(model, params) do
    model
      |> Revenue.changeset(params)
      |> Repo.update()
  end


end
