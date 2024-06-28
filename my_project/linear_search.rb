def linear_search(arr, x)
    arr.each_with_index do |element, index|
      return index if element == x
    end
    -1
  end
  