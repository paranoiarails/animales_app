require 'spec_helper'

describe "zonas/show" do
  before(:each) do
    @zona = assign(:zona, stub_model(Zona,
      :nombre => "Nombre",
      :notas => "Notas",
      :text => "Text"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/Notas/)
    rendered.should match(/Text/)
  end
end
