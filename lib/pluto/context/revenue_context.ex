defmodule Pluto.RevenueContext do

  @moduledoc false

  alias Pluto.Core.Revenue

  def all(_params) do
    Pluto.Core.Revenue.Api.all()
  end



end
