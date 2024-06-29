# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
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
  