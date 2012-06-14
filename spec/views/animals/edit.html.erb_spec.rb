require 'spec_helper'

describe "animals/edit" do
  before(:each) do
    @animal = assign(:animal, stub_model(Animal,
      :nombre => "MyString",
      :raza => "MyString",
      :sexo => "MyString",
      :observaciones => "MyText"
    ))
  end

  it "renders the edit animal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => animals_path(@animal), :method => "post" do
      assert_select "input#animal_nombre", :name => "animal[nombre]"
      assert_select "input#animal_raza", :name => "animal[raza]"
      assert_select "input#animal_sexo", :name => "animal[sexo]"
      assert_select "textarea#animal_observaciones", :name => "animal[observaciones]"
    end
  end
end
