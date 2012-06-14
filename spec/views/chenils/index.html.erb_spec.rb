require 'spec_helper'

describe "chenils/index" do
  before(:each) do
    assign(:chenils, [
      stub_model(Chenil,
        :zona_id => 1,
        :ocupado => 2,
        :capacidad => 3,
        :caplibre => 4,
        :notas => "MyText",
        :estado => 5
      ),
      stub_model(Chenil,
        :zona_id => 1,
        :ocupado => 2,
        :capacidad => 3,
        :caplibre => 4,
        :notas => "MyText",
        :estado => 5
      )
    ])
  end

  it "renders a list of chenils" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
