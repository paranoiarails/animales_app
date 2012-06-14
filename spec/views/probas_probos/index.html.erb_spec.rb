require 'spec_helper'

describe "probas_probos/index" do
  before(:each) do
    assign(:probas_probos, [
      stub_model(ProbasProbo,
        :proba_id => 1,
        :probo_id => 2
      ),
      stub_model(ProbasProbo,
        :proba_id => 1,
        :probo_id => 2
      )
    ])
  end

  it "renders a list of probas_probos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
