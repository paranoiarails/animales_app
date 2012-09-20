require File.dirname(__FILE__) + '/../spec_helper'

describe Especie do
  it "should be valid" do
    Especie.new.should be_valid
  end
end
