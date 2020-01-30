# MyApi

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Endpoints

  * `{base_url}/cep/{:cep_number}` -> will return information about your zip code (cep) based on `VIACEP` webservice.