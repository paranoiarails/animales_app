require 'spec_helper'

describe "zonas/index" do
  before(:each) do
    assign(:zonas, [
      stub_model(Zona,
        :nombre => "Nombre",
        :notas => "Notas",
        :text => "Text"
      ),
      stub_model(Zona,
        :nombre => "Nombre",
        :notas => "Notas",
        :text => "Text"
      )
    ])
  end

  it "renders a list of zonas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Notas".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
  end
end
