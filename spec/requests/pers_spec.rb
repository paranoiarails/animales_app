require 'spec_helper'

describe "Pers" do
  describe "GET /pers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get pers_path
      response.status.should be(200)
    end
  end
end
