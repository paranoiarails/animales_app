require 'spec_helper'

describe "diarios/new" do
  before(:each) do
    assign(:diario, stub_model(Diario,
      :zona_id => 1,
      :tareas => "MyText",
      :informe => "MyText"
    ).as_new_record)
  end

  it "renders new diario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => diarios_path, :method => "post" do
      assert_select "input#diario_zona_id", :name => "diario[zona_id]"
      assert_select "textarea#diario_tareas", :name => "diario[tareas]"
      assert_select "textarea#diario_informe", :name => "diario[informe]"
    end
  end
end
