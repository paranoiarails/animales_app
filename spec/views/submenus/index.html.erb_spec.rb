require 'spec_helper'

describe "submenus/index" do
  before(:each) do
    assign(:submenus, [
      stub_model(Submenu,
        :menu_id => 1,
        :titulo => "Titulo",
        :contenido => "MyText",
        :Picture_file_name => "Picture File Name",
        :Picture_content_type => "Picture Content Type",
        :Picture_file_size => 2
      ),
      stub_model(Submenu,
        :menu_id => 1,
        :titulo => "Titulo",
        :contenido => "MyText",
        :Picture_file_name => "Picture File Name",
        :Picture_content_type => "Picture Content Type",
        :Picture_file_size => 2
      )
    ])
  end

  it "renders a list of submenus" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Picture File Name".to_s, :count => 2
    assert_select "tr>td", :text => "Picture Content Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
