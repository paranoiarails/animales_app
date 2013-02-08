require 'spec_helper'

describe "submenus/show" do
  before(:each) do
    @submenu = assign(:submenu, stub_model(Submenu,
      :menu_id => 1,
      :titulo => "Titulo",
      :contenido => "MyText",
      :Picture_file_name => "Picture File Name",
      :Picture_content_type => "Picture Content Type",
      :Picture_file_size => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Titulo/)
    rendered.should match(/MyText/)
    rendered.should match(/Picture File Name/)
    rendered.should match(/Picture Content Type/)
    rendered.should match(/2/)
  end
end
