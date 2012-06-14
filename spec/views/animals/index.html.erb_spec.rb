require 'spec_helper'

describe "animals/index" do
  before(:each) do
    assign(:animals, [
      stub_model(Animal,
        :nombre => "Nombre",
        :raza => "Raza",
        :sexo => "Sexo",
        :observaciones => "MyText"
      ),
      stub_model(Animal,
        :nombre => "Nombre",
        :raza => "Raza",
        :sexo => "Sexo",
        :observaciones => "MyText"
      )
    ])
  end

  it "renders a list of animals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Raza".to_s, :count => 2
    assert_select "tr>td", :text => "Sexo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
