require 'spec_helper'

describe "probas_probos/show" do
  before(:each) do
    @probas_probo = assign(:probas_probo, stub_model(ProbasProbo,
      :proba_id => 1,
      :probo_id => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
  end
end
