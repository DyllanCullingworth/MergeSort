def merge_sort(arr)
  return arr if arr.length < 2 

  mid_point = (arr.length / 2).floor

  left_arr = merge_sort(arr[0...mid_point])
  right_arr = merge_sort(arr[mid_point...arr.length])

  merge(left_arr, right_arr)
end

def merge(left_arr, right_arr)
  arr = []

  until left_arr.empty? || right_arr.empty?
    if left_arr[0] < right_arr[0]
      arr << left_arr.shift
    else
      arr << right_arr.shift
    end
  end

  arr + left_arr + right_arr
end

arr = [5,6,4,3,2,1,7,8,9]
p merge_sort(arr)