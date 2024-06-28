=begin
def linearSearch(arr, x)
    i = 1
    for i in arr
        if arr[i] == x
            return i
        end
        i += 1
    end
    return -1
end

arr = [2, 3, 4, 10, 40]
x = 10

result = linearSearch(arr, x)
if result == -1
    puts "Elemento não está presente na lista"
else 
    puts "Elemento está presente na lista"
end

Essa foi minha solução inicial!

=end

def linear_search(arr, x)
    arr.each_with_index do |element, index|
      if element == x
        return index
      end
    end
    return -1
  end
  
  arr = [2, 3, 4, 10, 40]
  x = 12
  
  result = linear_search(arr, x)
  if result == -1
    puts "O elemento #{x} não está presente na lista"
  else 
    puts "O elemento #{x} está presente na lista no índice #{result}"
  end
  