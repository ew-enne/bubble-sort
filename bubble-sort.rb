# --- arrays for testing method ---
# test_arr = [1, 2, 3]
# test_arr = [2, 1, 3]
# test_arr = [2, 4, 6, 5, 1, 9, 3, 8]
# test_arr = [4,3,78,2,0,2]


def bubble_sort(arr)
  
  passage = 0 # counts number of passages
  limit = arr.length - 1 # max number of passages

  # make (max) limit number of passages
  for i in 1..(limit)

    # make one full passage of the array
    counter = 0 # counts number of changes

    arr.each_with_index do |element, index|
      if index < (limit - passage)
        first_element = arr[index]
        second_element = arr[index + 1]
        if first_element > second_element
          arr[index] = second_element
          arr[index + 1] = first_element
          counter += 1
        end
      end
    end

    if counter == 0 # array is in the right order
      p arr
      return
    end
    passage += 1

  end
end

bubble_sort(test_arr)