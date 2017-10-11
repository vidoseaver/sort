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
      list = [4,2]
      sorter = Sorter.new(list)
      describe "larger_number" do
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
      describe "insert_sort" do
        it "returns an array" do
          expect(sorter.insert_sort.class).to eq Array
        end
        it "it sorts the array" do
          expect(sorter.insert_sort).to eq [2,4]
        end
        it "can handle arrays with repeated values" do
          list = [6,6,6,8,8,2,1]
          sorter = Sorter.new(list)
          expect(sorter.insert_sort).to eq [1, 2, 6, 6, 6, 8, 8]
        end
      end
      describe "insert_number_in_correct_postion" do
        it "inserts a number greater then the number in the array after it" do
          expect(sorter.insert_number_in_correct_postion([2],4)).to eq [2,4]
        end
        it "it inserts a number at the start of the array if its less than it" do
          expect(sorter.insert_number_in_correct_postion([4],2)).to eq [2,4]
        end
        it "it inserts a number in the middle of a lower and higher number" do
          expect(sorter.insert_number_in_correct_postion([2,8],4)).to eq [2,4,8]
        end
        it "if it is the same as the middle number it puts it befor it" do
          expect(sorter.insert_number_in_correct_postion([2,4,8],4)).to eq [2,4,4,8]
        end
        it "if it is the same as the first number it can handle it" do
          expect(sorter.insert_number_in_correct_postion([2],2)).to eq [2,2]
        end
      end
    end
  end
end
