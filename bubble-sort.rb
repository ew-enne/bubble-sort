# test_arr = [1, 2, 3]
test_arr = [2, 1, 3]
# test_arr = [2, 4, 6, 5, 1, 9, 3, 8]

def bubble_sort(arr)
  
  counter = 0 # counts number of changes
  passage = 0 # counts number of passages

  # make one full passage of the array
  arr.each_with_index do |element, index|
    if index < (arr.length - passage - 1)
      first_element = arr[index]
      second_element = arr[index + 1]
      if first_element > second_element
        arr[index] = second_element
        arr[index + 1] = first_element
        counter += 1
      end
      p arr
    end
  end
  puts "counter = #{counter}"
  if counter == 0
    puts "--> nothing to change"
    # return
  end
  passage += 1
  puts "passage = #{passage}"
  puts "---> array after #{passage} passage:"
  p arr
end

bubble_sort(test_arr)