require 'spec_helper'

describe "probas/index" do
  before(:each) do
    assign(:probas, [
      stub_model(Proba,
        :nombre => "Nombre",
        :correo => "Correo",
        :per_id => 1
      ),
      stub_model(Proba,
        :nombre => "Nombre",
        :correo => "Correo",
        :per_id => 1
      )
    ])
  end

  it "renders a list of probas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
    assert_select "tr>td", :text => "Correo".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
