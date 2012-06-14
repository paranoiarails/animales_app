require 'spec_helper'

describe "dinos/edit" do
  before(:each) do
    @dino = assign(:dino, stub_model(Dino,
      :dina_id => 1,
      :nombre => "MyString",
      :raza => "MyString"
    ))
  end

  it "renders the edit dino form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dinos_path(@dino), :method => "post" do
      assert_select "input#dino_dina_id", :name => "dino[dina_id]"
      assert_select "input#dino_nombre", :name => "dino[nombre]"
      assert_select "input#dino_raza", :name => "dino[raza]"
    end
  end
end
