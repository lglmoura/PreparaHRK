require 'spec_helper'

describe "categorias/new" do
  before(:each) do
    assign(:categoria, stub_model(Categoria,
      :nome => "MyString",
      :pai_id => "MyString"
    ).as_new_record)
  end

  it "renders new categoria form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", categorias_path, "post" do
      assert_select "input#categoria_nome[name=?]", "categoria[nome]"
      assert_select "input#categoria_pai_id[name=?]", "categoria[pai_id]"
    end
  end
end
