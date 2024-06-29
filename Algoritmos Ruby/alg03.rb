# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
=begin
def remove_element(nums, val)
    k = 0
    nums.each do |num|
      if num != val
        nums[k] = num
        k += 1
      end
    end
    return k
  end
  
  nums = [0, 1, 2, 2, 3, 0, 4, 2]
  val = 2
  k = remove_element(nums, val)
  puts "k = #{k}, nums = #{nums[0...k].join(", ")}"
=end

def remove_element(nums, val)
  nums.delete(val)
  nums.length
end

nums = [0, 1, 2, 2, 3, 0, 4, 2]
val = 2
remove_element(nums, val)
puts "val = #{val}, nums = #{nums[0...nums.length].join(", ")}"

  