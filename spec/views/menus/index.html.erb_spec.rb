require 'spec_helper'

describe "menus/index" do
  before(:each) do
    assign(:menus, [
      stub_model(Menu,
        :tirulo => "Tirulo",
        :content => "MyText",
        :Picture_file_name => "Picture File Name",
        :Picture_content_type => "Picture Content Type",
        :Picture_file_size => 1
      ),
      stub_model(Menu,
        :tirulo => "Tirulo",
        :content => "MyText",
        :Picture_file_name => "Picture File Name",
        :Picture_content_type => "Picture Content Type",
        :Picture_file_size => 1
      )
    ])
  end

  it "renders a list of menus" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tirulo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Picture File Name".to_s, :count => 2
    assert_select "tr>td", :text => "Picture Content Type".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
