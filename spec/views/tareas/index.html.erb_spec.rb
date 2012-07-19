require 'spec_helper'

describe "tareas/index" do
  before(:each) do
    assign(:tareas, [
      stub_model(Tarea,
        :nombre => "Nombre",
        :persona_id => 1,
        :zona_id => 2,
        :animal_id => 3,
        :texto => "MyText",
        :ocupacion_id => 4
      ),
      stub_model(Tarea,
        :nombre => "Nombre",
        :persona_id => 1,
        :zona_id => 2,
        :animal_id => 3,
        :texto => "MyText",
        :ocupacion_id => 4
      )
    ])
  end

  it "renders a list of tareas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
