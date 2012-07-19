require 'spec_helper'

describe "pers/new" do
  before(:each) do
    assign(:per, stub_model(Per,
      :nombre => "MyString"
    ).as_new_record)
  end

  it "renders new per form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pers_path, :method => "post" do
      assert_select "input#per_nombre", :name => "per[nombre]"
    end
  end
end
