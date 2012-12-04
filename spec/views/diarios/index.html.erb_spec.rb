require 'spec_helper'

describe "diarios/index" do
  before(:each) do
    assign(:diarios, [
      stub_model(Diario,
        :zona_id => 1,
        :tareas => "MyText",
        :informe => "MyText"
      ),
      stub_model(Diario,
        :zona_id => 1,
        :tareas => "MyText",
        :informe => "MyText"
      )
    ])
  end

  it "renders a list of diarios" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
