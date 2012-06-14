require 'spec_helper'

describe "dinas/index" do
  before(:each) do
    assign(:dinas, [
      stub_model(Dina,
        :nombre => "Nombre",
        :edad => 1
      ),
      stub_model(Dina,
        :nombre => "Nombre",
        :edad => 1
      )
    ])
  end

  it "renders a list of dinas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
