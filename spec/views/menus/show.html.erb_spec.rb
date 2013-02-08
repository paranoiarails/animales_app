require 'spec_helper'

describe "menus/show" do
  before(:each) do
    @menu = assign(:menu, stub_model(Menu,
      :tirulo => "Tirulo",
      :content => "MyText",
      :Picture_file_name => "Picture File Name",
      :Picture_content_type => "Picture Content Type",
      :Picture_file_size => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tirulo/)
    rendered.should match(/MyText/)
    rendered.should match(/Picture File Name/)
    rendered.should match(/Picture Content Type/)
    rendered.should match(/1/)
  end
end
