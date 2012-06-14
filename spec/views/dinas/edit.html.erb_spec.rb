require 'spec_helper'

describe "dinas/edit" do
  before(:each) do
    @dina = assign(:dina, stub_model(Dina,
      :nombre => "MyString",
      :edad => 1
    ))
  end

  it "renders the edit dina form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dinas_path(@dina), :method => "post" do
      assert_select "input#dina_nombre", :name => "dina[nombre]"
      assert_select "input#dina_edad", :name => "dina[edad]"
    end
  end
end
