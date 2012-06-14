require 'spec_helper'

describe "probas/index" do
  before(:each) do
    assign(:probas, [
      stub_model(Proba,
        :nombre => "Nombre"
      ),
      stub_model(Proba,
        :nombre => "Nombre"
      )
    ])
  end

  it "renders a list of probas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
  end
end
