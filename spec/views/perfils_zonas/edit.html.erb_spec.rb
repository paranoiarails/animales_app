require 'spec_helper'

describe "perfils_zonas/edit" do
  before(:each) do
    @perfils_zona = assign(:perfils_zona, stub_model(PerfilsZona,
      :perfil_id => 1,
      :zona_id => 1
    ))
  end

  it "renders the edit perfils_zona form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => perfils_zonas_path(@perfils_zona), :method => "post" do
      assert_select "input#perfils_zona_perfil_id", :name => "perfils_zona[perfil_id]"
      assert_select "input#perfils_zona_zona_id", :name => "perfils_zona[zona_id]"
    end
  end
end
