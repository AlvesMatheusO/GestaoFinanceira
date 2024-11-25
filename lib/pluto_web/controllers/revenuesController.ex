defmodule PlutoWeb.RevenuesController do

  @moduledoc false
  use PlutoWeb, :controller

  alias Pluto.RevenueContext

  def all(conn, params) do

    revenues = RevenueContext.all(params)
    json(conn, %{data: revenues})
  end
end
