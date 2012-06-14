require 'spec_helper'

describe "probos/index" do
  before(:each) do
    assign(:probos, [
      stub_model(Probo,
        :nombre => "Nombre"
      ),
      stub_model(Probo,
        :nombre => "Nombre"
      )
    ])
  end

  it "renders a list of probos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nombre".to_s, :count => 2
  end
end
