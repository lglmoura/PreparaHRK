require 'spec_helper'

describe "categorias/show" do
  before(:each) do
    @categoria = assign(:categoria, stub_model(Categoria,
      :nome => "Nome",
      :pai_id => "Pai"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Pai/)
  end
end
