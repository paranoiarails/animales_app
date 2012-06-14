require 'spec_helper'

describe "ocupacions/new" do
  before(:each) do
    assign(:ocupacion, stub_model(Ocupacion,
      :nombre => "MyString"
    ).as_new_record)
  end

  it "renders new ocupacion form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => ocupacions_path, :method => "post" do
      assert_select "input#ocupacion_nombre", :name => "ocupacion[nombre]"
    end
  end
end
