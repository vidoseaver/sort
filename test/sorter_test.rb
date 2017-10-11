require "rspec"
require "./lib/sorter"


RSpec.describe Sorter do
  context "general attributes:" do
    it "instantiates with an unsorted list" do
      list = [4,2]
      sorter = Sorter.new(list)
      expect(sorter).to be_a Sorter
    end
    context "instance methods" do
      describe "larger_number" do
        list = [4,2]
        sorter = Sorter.new(list)
        it "returns the larger of the two numbers" do
            expect(sorter.larger_number(4,2)).to eq 4
        end
        it "works if the numbers are reversed" do
          expect(sorter.larger_number(2,4)).to eq 4
        end

        it "it returns the number if they are equal" do
          expect(sorter.larger_number(4,4)).to eq 4
        end
      end
    end
  end
end
