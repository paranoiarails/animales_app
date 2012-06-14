require 'spec_helper'

describe "probas/edit" do
  before(:each) do
    @proba = assign(:proba, stub_model(Proba,
      :nombre => "MyString"
    ))
  end

  it "renders the edit proba form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => probas_path(@proba), :method => "post" do
      assert_select "input#proba_nombre", :name => "proba[nombre]"
    end
  end
end
