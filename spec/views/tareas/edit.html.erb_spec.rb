require 'spec_helper'

describe "tareas/edit" do
  before(:each) do
    @tarea = assign(:tarea, stub_model(Tarea,
      :nombre => "MyString",
      :persona_id => 1,
      :zona_id => 1,
      :animal_id => 1,
      :texto => "MyText",
      :ocupacion_id => 1
    ))
  end

  it "renders the edit tarea form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tareas_path(@tarea), :method => "post" do
      assert_select "input#tarea_nombre", :name => "tarea[nombre]"
      assert_select "input#tarea_persona_id", :name => "tarea[persona_id]"
      assert_select "input#tarea_zona_id", :name => "tarea[zona_id]"
      assert_select "input#tarea_animal_id", :name => "tarea[animal_id]"
      assert_select "textarea#tarea_texto", :name => "tarea[texto]"
      assert_select "input#tarea_ocupacion_id", :name => "tarea[ocupacion_id]"
    end
  end
end
