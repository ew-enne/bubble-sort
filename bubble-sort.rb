# test_arr = [2, 1, 3]
test_arr = [2, 4, 6, 5, 1, 9, 3, 8]

def bubble_sort(arr)
  # one passage of the array
  arr.each_with_index do |element, index|
    if index < (arr.length - 1)
      first_element = arr[index]
      second_element = arr[index + 1]
      if first_element > second_element
        arr[index] = second_element
        arr[index + 1] = first_element
      end
      p arr
    end
  end
  p arr
end

bubble_sort(test_arr)