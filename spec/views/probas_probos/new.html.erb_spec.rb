require 'spec_helper'

describe "probas_probos/new" do
  before(:each) do
    assign(:probas_probo, stub_model(ProbasProbo,
      :proba_id => 1,
      :probo_id => 1
    ).as_new_record)
  end

  it "renders new probas_probo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => probas_probos_path, :method => "post" do
      assert_select "input#probas_probo_proba_id", :name => "probas_probo[proba_id]"
      assert_select "input#probas_probo_probo_id", :name => "probas_probo[probo_id]"
    end
  end
end
