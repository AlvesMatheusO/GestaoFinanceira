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
  end

  # get by
  def get_by(where) do
    from(Revenue)
    |> where(^where)
    |>  Repo.one()
  end

  # create revenue
  def insert(params) do
    struct(Revenue, params)
    |> Repo.insert()
  end

  # delete revenue
  def delete(id) do
    case get(id) do
      nil -> nil
      revenue -> Repo.delete(revenue)
    end

  end

  # edit revenue


end
