require 'rails_helper'

RSpec.describe "usuarios/edit", type: :view do
  let(:usuario) {
    Usuario.create!(
      login: "MyString",
      nome: "MyString",
      avatar: "MyString"
    )
  }

  before(:each) do
    assign(:usuario, usuario)
  end

  it "renders the edit usuario form" do
    render

    assert_select "form[action=?][method=?]", usuario_path(usuario), "post" do

      assert_select "input[name=?]", "usuario[login]"

      assert_select "input[name=?]", "usuario[nome]"

      assert_select "input[name=?]", "usuario[avatar]"
    end
  end
end
