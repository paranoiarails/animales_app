require 'spec_helper'

describe "dinos/index" do
  before(:each) do
    assign(:dinos, [
      stub_model(Dino,
        :dina_id => 1,
        :nombre => "Nombre",
        :raza => "Raza"
      ),
      stub_model(Dino,
        :dina_id => 1,
        :nombre => "Nombre",
        :raza => "Raza"
      )
    ])
  end

  it "renders a list of dinos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Raza".to_s, :count => 2
  end
end
