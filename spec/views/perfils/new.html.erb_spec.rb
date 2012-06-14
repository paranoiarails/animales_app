require 'spec_helper'

describe "perfils/new" do
  before(:each) do
    assign(:perfil, stub_model(Perfil,
      :ocupacion_id => 1
    ).as_new_record)
  end

  it "renders new perfil form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => perfils_path, :method => "post" do
      assert_select "input#perfil_ocupacion_id", :name => "perfil[ocupacion_id]"
    end
  end
end
