class Sorter

  def initialize(unsorted_list)
    @unsorted_list = unsorted_list
  end

  def larger_number(num_1, num_2)
    return num_1 if num_1 >= num_2
    num_2
  end

end
