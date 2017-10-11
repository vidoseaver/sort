require "pry"

class Sorter

  def initialize(unsorted_list)
    @unsorted_list = unsorted_list
  end

  def insert_sort
    sorted_list = []
    @unsorted_list.each do |number|
      if sorted_list.first == nil
        sorted_list.unshift(number)
      else
        sorted_list = insert_number_in_correct_postion(sorted_list, number)
      end
    end
    sorted_list
  end

  def insert_number_in_correct_postion(list, number)
    new_list = list
    list.each_with_index do |list_number, index|
      if number <= list_number
        return new_list.insert(index, number)
      elsif list[index + 1] == nil
        return new_list.push(number)
      end
    end
    new_list
  end
end
