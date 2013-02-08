require 'spec_helper'

describe "submenus/edit" do
  before(:each) do
    @submenu = assign(:submenu, stub_model(Submenu,
      :menu_id => 1,
      :titulo => "MyString",
      :contenido => "MyText",
      :Picture_file_name => "MyString",
      :Picture_content_type => "MyString",
      :Picture_file_size => 1
    ))
  end

  it "renders the edit submenu form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => submenus_path(@submenu), :method => "post" do
      assert_select "input#submenu_menu_id", :name => "submenu[menu_id]"
      assert_select "input#submenu_titulo", :name => "submenu[titulo]"
      assert_select "textarea#submenu_contenido", :name => "submenu[contenido]"
      assert_select "input#submenu_Picture_file_name", :name => "submenu[Picture_file_name]"
      assert_select "input#submenu_Picture_content_type", :name => "submenu[Picture_content_type]"
      assert_select "input#submenu_Picture_file_size", :name => "submenu[Picture_file_size]"
    end
  end
end
