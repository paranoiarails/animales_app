require 'spec_helper'

describe "ocupacions/edit" do
  before(:each) do
    @ocupacion = assign(:ocupacion, stub_model(Ocupacion,
      :nombre => "MyString"
    ))
  end

  it "renders the edit ocupacion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ocupacions_path(@ocupacion), :method => "post" do
      assert_select "input#ocupacion_nombre", :name => "ocupacion[nombre]"
    end
  end
end
