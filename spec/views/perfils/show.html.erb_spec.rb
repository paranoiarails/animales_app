require 'spec_helper'

describe "perfils/show" do
  before(:each) do
    @perfil = assign(:perfil, stub_model(Perfil,
      :ocupacion_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
