defmodule Cep do
  def verify(cep) do
    cep
    url = "https://viacep.com.br/ws/#{cep}/json/"
    response = HTTPoison.get!(url)

    if response.status_code == 200 do
      Poison.decode!(response.body)
    else
      "invalid_cep"
    end
  end
end
