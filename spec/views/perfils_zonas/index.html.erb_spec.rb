require 'spec_helper'

describe "perfils_zonas/index" do
  before(:each) do
    assign(:perfils_zonas, [
      stub_model(PerfilsZona,
        :perfil_id => 1,
        :zona_id => 2
      ),
      stub_model(PerfilsZona,
        :perfil_id => 1,
        :zona_id => 2
      )
    ])
  end

  it "renders a list of perfils_zonas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
