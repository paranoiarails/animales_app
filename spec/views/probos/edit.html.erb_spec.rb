require 'spec_helper'

describe "probos/edit" do
  before(:each) do
    @probo = assign(:probo, stub_model(Probo,
      :nombre => "MyString"
    ))
  end

  it "renders the edit probo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => probos_path(@probo), :method => "post" do
      assert_select "input#probo_nombre", :name => "probo[nombre]"
    end
  end
end
