require 'spec_helper'

describe "diarios/show" do
  before(:each) do
    @diario = assign(:diario, stub_model(Diario,
      :zona_id => 1,
      :tareas => "MyText",
      :informe => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/MyText/)
    rendered.should match(/MyText/)
  end
end
