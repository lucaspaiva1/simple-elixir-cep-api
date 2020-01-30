defmodule MyApiWeb.Router do
  use MyApiWeb, :router

  pipeline :api do
    plug(:accepts, ["json"])
  end

  scope "/cep", MyApiWeb do
    pipe_through(:api)

    get("/:cep", CepController, :verify)
  end
end
