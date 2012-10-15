require 'spec_helper'

describe "horarios/new" do
  before(:each) do
    assign(:horario, stub_model(Horario,
      :user_id => 1,
      :zona_id => 1,
      :tarde => 1
    ).as_new_record)
  end

  it "renders new horario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => horarios_path, :method => "post" do
      assert_select "input#horario_user_id", :name => "horario[user_id]"
      assert_select "input#horario_zona_id", :name => "horario[zona_id]"
      assert_select "input#horario_tarde", :name => "horario[tarde]"
    end
  end
end
