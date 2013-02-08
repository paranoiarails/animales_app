require 'spec_helper'

describe "articulos/edit" do
  before(:each) do
    @articulo = assign(:articulo, stub_model(Articulo,
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit articulo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => articulos_path(@articulo), :method => "post" do
      assert_select "input#articulo_title", :name => "articulo[title]"
      assert_select "textarea#articulo_content", :name => "articulo[content]"
    end
  end
end
