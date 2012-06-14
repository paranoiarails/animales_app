require 'spec_helper'

describe "probos/show" do
  before(:each) do
    @probo = assign(:probo, stub_model(Probo,
      :nombre => "Nombre"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
  end
end
