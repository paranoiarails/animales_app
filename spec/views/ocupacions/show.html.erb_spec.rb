require 'spec_helper'

describe "ocupacions/show" do
  before(:each) do
    @ocupacion = assign(:ocupacion, stub_model(Ocupacion,
      :nombre => "Nombre"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
  end
end
