require 'rails_helper'

RSpec.describe "usuarios/index", type: :view do
  before(:each) do
    assign(:usuarios, [
      Usuario.create!(
        login: "Login",
        nome: "Nome",
        avatar: "Avatar"
      ),
      Usuario.create!(
        login: "Login",
        nome: "Nome",
        avatar: "Avatar"
      )
    ])
  end

  it "renders a list of usuarios" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Login".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Nome".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Avatar".to_s), count: 2
  end
end
