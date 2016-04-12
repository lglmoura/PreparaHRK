require 'spec_helper'

describe "categorias/edit" do
  before(:each) do
    @categoria = assign(:categoria, stub_model(Categoria,
      :nome => "MyString",
      :pai_id => "MyString"
    ))
  end

  it "renders the edit categoria form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", categoria_path(@categoria), "post" do
      assert_select "input#categoria_nome[name=?]", "categoria[nome]"
      assert_select "input#categoria_pai_id[name=?]", "categoria[pai_id]"
    end
  end
end
