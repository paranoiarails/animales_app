require 'spec_helper'

describe "chenils/edit" do
  before(:each) do
    @chenil = assign(:chenil, stub_model(Chenil,
      :zona_id => 1,
      :ocupado => 1,
      :capacidad => 1,
      :caplibre => 1,
      :notas => "MyText",
      :estado => 1
    ))
  end

  it "renders the edit chenil form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => chenils_path(@chenil), :method => "post" do
      assert_select "input#chenil_zona_id", :name => "chenil[zona_id]"
      assert_select "input#chenil_ocupado", :name => "chenil[ocupado]"
      assert_select "input#chenil_capacidad", :name => "chenil[capacidad]"
      assert_select "input#chenil_caplibre", :name => "chenil[caplibre]"
      assert_select "textarea#chenil_notas", :name => "chenil[notas]"
      assert_select "input#chenil_estado", :name => "chenil[estado]"
    end
  end
end
