# Lab 1
# Part I
def sum arr
  sum = 0
  arr.each do |x|
    sum += x
  end
  return sum
end

# Part II
def max_2_sum arr
  if arr.empty?
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    max1 = arr.sort[-1]  #largest value
    max2 = arr.sort[-2]  #smallest value
    sum = max1 + max2
    return sum
  end
end

# Part III
def sum_to_n? arr, n 
  if arr.length == 1
    return false
  else
    index = 0
    arr.each do |item|      #search the array
    sum = 0
      index = index + 1
      if index < arr.size
      sum = arr[index] + item
        if sum == n
          return true
        end
      end
        
    end
  end
  return false
end
