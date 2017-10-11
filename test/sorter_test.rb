require "rspec"
require "./lib/sorter"


RSpec.describe Sorter do
  context "general attributes:" do
    it "instantiates with an unsorted list" do
      list = [4,2]
      sorter = Sorter.new(list)
      expect(sorter).to be_a Sorter
    end
  end
end
