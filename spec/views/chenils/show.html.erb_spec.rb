require 'spec_helper'

describe "chenils/show" do
  before(:each) do
    @chenil = assign(:chenil, stub_model(Chenil,
      :zona_id => 1,
      :ocupado => 2,
      :capacidad => 3,
      :caplibre => 4,
      :notas => "MyText",
      :estado => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/MyText/)
    rendered.should match(/5/)
  end
end
