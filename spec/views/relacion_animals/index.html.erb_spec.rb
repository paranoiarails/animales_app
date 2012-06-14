require 'spec_helper'

describe "relacion_animals/index" do
  before(:each) do
    assign(:relacion_animals, [
      stub_model(RelacionAnimal,
        :animal1_id => 1,
        :animal2_id => 2,
        :relacion => 3
      ),
      stub_model(RelacionAnimal,
        :animal1_id => 1,
        :animal2_id => 2,
        :relacion => 3
      )
    ])
  end

  it "renders a list of relacion_animals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
