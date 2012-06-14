require 'spec_helper'

describe "dinas/show" do
  before(:each) do
    @dina = assign(:dina, stub_model(Dina,
      :nombre => "Nombre",
      :edad => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/1/)
  end
end
