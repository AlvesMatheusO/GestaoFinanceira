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

  def insert(conn, params) do
    case RevenueContext.insert(params) do
      {:ok, revenue} ->
        json(conn, %{data: revenue})

      {:error, msg} ->
        put_status(conn, 422)
        |> json(%{error: msg})
    end
  end

  def update(conn, params) do
    case RevenueContext.update(params) do
      {:ok, revenue} ->
        json(conn, %{data: revenue})

      {:error, msg} ->
        conn
        |> put_status(422)
        |> json(%{error: msg})
    end
  end

  def delete(conn, params) do
    case RevenueContext.delete(params) do
      {:ok, revenue} ->
        json(conn, %{data: revenue})

      {:error, msg} ->
        put_status(conn, 422)
        |> json(%{error: msg})
    end
  end
end
