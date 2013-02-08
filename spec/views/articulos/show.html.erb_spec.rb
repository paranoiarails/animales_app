require 'spec_helper'

describe "articulos/show" do
  before(:each) do
    @articulo = assign(:articulo, stub_model(Articulo,
      :title => "Title",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
  end
end
