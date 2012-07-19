require 'spec_helper'

describe "tareas/show" do
  before(:each) do
    @tarea = assign(:tarea, stub_model(Tarea,
      :nombre => "Nombre",
      :persona_id => 1,
      :zona_id => 2,
      :animal_id => 3,
      :texto => "MyText",
      :ocupacion_id => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/MyText/)
    rendered.should match(/4/)
  end
end
