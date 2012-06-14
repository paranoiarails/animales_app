require 'spec_helper'

describe "perfils_zonas/show" do
  before(:each) do
    @perfils_zona = assign(:perfils_zona, stub_model(PerfilsZona,
      :perfil_id => 1,
      :zona_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
