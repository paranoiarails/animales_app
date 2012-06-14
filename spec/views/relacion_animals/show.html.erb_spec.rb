require 'spec_helper'

describe "relacion_animals/show" do
  before(:each) do
    @relacion_animal = assign(:relacion_animal, stub_model(RelacionAnimal,
      :animal1_id => 1,
      :animal2_id => 2,
      :relacion => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
