defmodule MyApiWeb.CepController do
  use MyApiWeb, :controller

  def verify(conn, %{"cep" => cep}) do
    result = Cep.verify(cep)
    json(conn, %{result: result})
  end
end
