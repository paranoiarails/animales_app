require 'spec_helper'

describe "horarios/index" do
  before(:each) do
    assign(:horarios, [
      stub_model(Horario,
        :user_id => 1,
        :zona_id => 2,
        :tarde => 3
      ),
      stub_model(Horario,
        :user_id => 1,
        :zona_id => 2,
        :tarde => 3
      )
    ])
  end

  it "renders a list of horarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
