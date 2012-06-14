require 'spec_helper'

describe "RelacionAnimals" do
  describe "GET /relacion_animals" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get relacion_animals_path
      response.status.should be(200)
    end
  end
end
