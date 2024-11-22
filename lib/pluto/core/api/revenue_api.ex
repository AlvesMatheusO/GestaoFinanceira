defmodule Pluto.Core.Revenue.Api do
  @moduledoc false

  alias Pluto.Repo
  alias Pluto.Core.Revenue

  # get All revenues
  def all do
    Repo.all(Revenue)
  end



end
