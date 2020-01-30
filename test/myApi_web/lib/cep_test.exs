defmodule MyApiWeb.ErrorViewTest do
  use MyApiWeb.ConnCase, async: true

  # Bring render/3 and render_to_string/3 for testing custom views
  import Phoenix.View

  test "verify invalid cep" do
    assert Cep.verify('440544399') == "invalid_cep"
  end

  test "verify known cep" do
    location = Cep.verify('44054378')
    assert location["localidade"] == "Feira de Santana"
    assert location["uf"] == "BA"
  end
end
