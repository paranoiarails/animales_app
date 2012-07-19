require 'spec_helper'

describe "probas/new" do
  before(:each) do
    assign(:proba, stub_model(Proba,
      :nombre => "MyString",
      :correo => "MyString",
      :per_id => 1
    ).as_new_record)
  end

  it "renders new proba form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => probas_path, :method => "post" do
      assert_select "input#proba_nombre", :name => "proba[nombre]"
      assert_select "input#proba_correo", :name => "proba[correo]"
      assert_select "input#proba_per_id", :name => "proba[per_id]"
    end
  end
end
