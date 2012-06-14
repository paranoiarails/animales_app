require 'spec_helper'

describe "dinos/show" do
  before(:each) do
    @dino = assign(:dino, stub_model(Dino,
      :dina_id => 1,
      :nombre => "Nombre",
      :raza => "Raza"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Nombre/)
    rendered.should match(/Raza/)
  end
end
