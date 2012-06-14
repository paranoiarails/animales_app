require 'spec_helper'

describe "probos/new" do
  before(:each) do
    assign(:probo, stub_model(Probo,
      :nombre => "MyString"
    ).as_new_record)
  end

  it "renders new probo form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => probos_path, :method => "post" do
      assert_select "input#probo_nombre", :name => "probo[nombre]"
    end
  end
end
