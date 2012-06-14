require 'spec_helper'

describe "animals/show" do
  before(:each) do
    @animal = assign(:animal, stub_model(Animal,
      :nombre => "Nombre",
      :raza => "Raza",
      :sexo => "Sexo",
      :observaciones => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/Raza/)
    rendered.should match(/Sexo/)
    rendered.should match(/MyText/)
  end
end
