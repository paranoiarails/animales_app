require 'spec_helper'

describe "horarios/edit" do
  before(:each) do
    @horario = assign(:horario, stub_model(Horario,
      :user_id => 1,
      :zona_id => 1,
      :tarde => 1
    ))
  end

  it "renders the edit horario form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => horarios_path(@horario), :method => "post" do
      assert_select "input#horario_user_id", :name => "horario[user_id]"
      assert_select "input#horario_zona_id", :name => "horario[zona_id]"
      assert_select "input#horario_tarde", :name => "horario[tarde]"
    end
  end
end
