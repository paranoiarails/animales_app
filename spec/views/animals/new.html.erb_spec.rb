require 'spec_helper'

describe "animals/new" do
  before(:each) do
    assign(:animal, stub_model(Animal,
      :nombre => "MyString",
      :raza => "MyString",
      :sexo => "MyString",
      :observaciones => "MyText"
    ).as_new_record)
  end

  it "renders new animal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => animals_path, :method => "post" do
      assert_select "input#animal_nombre", :name => "animal[nombre]"
      assert_select "input#animal_raza", :name => "animal[raza]"
      assert_select "input#animal_sexo", :name => "animal[sexo]"
      assert_select "textarea#animal_observaciones", :name => "animal[observaciones]"
    end
  end
end
