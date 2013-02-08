require 'spec_helper'

describe "articulos/new" do
  before(:each) do
    assign(:articulo, stub_model(Articulo,
      :title => "MyString",
      :content => "MyText"
    ).as_new_record)
  end

  it "renders new articulo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => articulos_path, :method => "post" do
      assert_select "input#articulo_title", :name => "articulo[title]"
      assert_select "textarea#articulo_content", :name => "articulo[content]"
    end
  end
end
