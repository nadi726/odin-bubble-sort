def bubble_sort unsorted_arr
  arr = unsorted_arr.dup # Don't mutate the original array
  iterations = arr.length - 1
  iterations.times do |count|
    sorted = true
    (iterations-count).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        sorted = false
      end
    end

    # Don't check the rest of the array if it is already sorted
    break if sorted
  end
  arr
end
