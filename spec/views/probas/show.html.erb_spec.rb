require 'spec_helper'

describe "probas/show" do
  before(:each) do
    @proba = assign(:proba, stub_model(Proba,
      :nombre => "Nombre"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nombre/)
  end
end
