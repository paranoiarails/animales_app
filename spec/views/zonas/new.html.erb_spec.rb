require 'spec_helper'

describe "zonas/new" do
  before(:each) do
    assign(:zona, stub_model(Zona,
      :nombre => "MyString",
      :notas => "MyString",
      :text => "MyString"
    ).as_new_record)
  end

  it "renders new zona form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => zonas_path, :method => "post" do
      assert_select "input#zona_nombre", :name => "zona[nombre]"
      assert_select "input#zona_notas", :name => "zona[notas]"
      assert_select "input#zona_text", :name => "zona[text]"
    end
  end
end
