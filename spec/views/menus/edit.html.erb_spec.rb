require 'spec_helper'

describe "menus/edit" do
  before(:each) do
    @menu = assign(:menu, stub_model(Menu,
      :tirulo => "MyString",
      :content => "MyText",
      :Picture_file_name => "MyString",
      :Picture_content_type => "MyString",
      :Picture_file_size => 1
    ))
  end

  it "renders the edit menu form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => menus_path(@menu), :method => "post" do
      assert_select "input#menu_tirulo", :name => "menu[tirulo]"
      assert_select "textarea#menu_content", :name => "menu[content]"
      assert_select "input#menu_Picture_file_name", :name => "menu[Picture_file_name]"
      assert_select "input#menu_Picture_content_type", :name => "menu[Picture_content_type]"
      assert_select "input#menu_Picture_file_size", :name => "menu[Picture_file_size]"
    end
  end
end
