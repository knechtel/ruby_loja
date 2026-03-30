require 'rails_helper'

RSpec.describe "usuarios/show", type: :view do
  before(:each) do
    assign(:usuario, Usuario.create!(
      login: "Login",
      nome: "Nome",
      avatar: "Avatar"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Login/)
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Avatar/)
  end
end
