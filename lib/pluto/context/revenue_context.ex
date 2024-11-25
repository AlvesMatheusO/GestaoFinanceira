defmodule Pluto.RevenueContext do
  @moduledoc false

  alias Pluto.Core.Revenue

  def all(_params) do
    Pluto.Core.Revenue.Api.all()
  end

  def get(params) do
    id = params["id"]
    Revenue.Api.get(id)
  end

  def insert(params) do
    Revenue.Api.insert(params)
  end

  def update(%{"id" => id} = params) do
    with {:ok, revenue} <- Revenue.Api.get(id),
         {:ok, revenue_updated} <- Revenue.Api.update(revenue, params) do
      {:ok, revenue_updated}
    else
      {:error, msg} -> {:error, msg}
      _ -> {:error, "Unable to update the revenue"}
    end
  end

  def delete(params) do
    id = params["id"]
    Revenue.Api.delete(id)
  end
end
