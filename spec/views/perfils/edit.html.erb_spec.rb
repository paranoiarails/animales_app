require 'spec_helper'

describe "perfils/edit" do
  before(:each) do
    @perfil = assign(:perfil, stub_model(Perfil,
      :ocupacion_id => 1
    ))
  end

  it "renders the edit perfil form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => perfils_path(@perfil), :method => "post" do
      assert_select "input#perfil_ocupacion_id", :name => "perfil[ocupacion_id]"
    end
  end
end
