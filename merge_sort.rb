def merge(left_array, right_array)
  merged_array = []
  until left_array == [] && right_array == []
    if right_array == []
      merged_array.push(left_array.delete_at(0))
    elsif left_array == []
      merged_array.push(right_array.delete_at(0))
    elsif left_array[0] <= right_array[0]
      merged_array.push(left_array.delete_at(0))
    elsif left_array[0] > right_array[0]
      merged_array.push(right_array.delete_at(0))
    end
  end
  merged_array
end

def merge_sort(array)
  return array if array.length == 1
  return merge(merge_sort(array[0..array.length / 2 - 1]), merge_sort(array[array.length / 2..-1]))
end

p merge_sort([8,9,18,19,7,10,4,17,12,11,13,14,7,5,6,-2,-1,3,1,2,0,20,15,16,21,-3,-4,22,23])