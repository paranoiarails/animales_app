require 'spec_helper'

describe "zonas/edit" do
  before(:each) do
    @zona = assign(:zona, stub_model(Zona,
      :nombre => "MyString",
      :notas => "MyString",
      :text => "MyString"
    ))
  end

  it "renders the edit zona form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => zonas_path(@zona), :method => "post" do
      assert_select "input#zona_nombre", :name => "zona[nombre]"
      assert_select "input#zona_notas", :name => "zona[notas]"
      assert_select "input#zona_text", :name => "zona[text]"
    end
  end
end
