defmodule PlutoWeb.RevenuesController do
  @moduledoc false
  use PlutoWeb, :controller

  alias Pluto.RevenueContext

  def all(conn, _params) do
    revenues = RevenueContext.all(%{})
    json(conn, %{data: revenues})
  end
  def get(conn, params) do
    case RevenueContext.get(params) do
      {:ok, revenue} ->
        json(conn, %{data: revenue})

      {:error, msg} ->
        put_status(conn, 422)
        |> json(%{error: msg})
    end
  end
end
