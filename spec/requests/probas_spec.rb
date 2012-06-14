require 'spec_helper'

describe "Probas" do
  describe "GET /probas" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get probas_path
      response.status.should be(200)
    end
  end
end
