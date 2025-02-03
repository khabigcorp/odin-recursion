def merge_sort(array)
  if (array.size == 1)
    return array
  elsif (array.size == 0)
    return []
  else
    middle = array.size / 2
    left_side = merge_sort(array.slice(0, middle))
    right_side = merge_sort(array.slice(middle, array.size))

    merged_array = []
    left_pointer = 0
    right_pointer = 0
    while (left_pointer < left_side.size && right_pointer < right_side.size)
      if (left_side[left_pointer] < right_side[right_pointer])
        merged_array.push(left_side[left_pointer])
        left_pointer += 1;
      else
        merged_array.push(right_side[right_pointer])
        right_pointer += 1;
      end
    end

    while (left_pointer < left_side.size)
      merged_array.push(left_side[left_pointer])
      left_pointer += 1;
    end

    while (right_pointer < right_side.size)
      merged_array.push(right_side[right_pointer])
      right_pointer += 1;
    end

    return merged_array
  end

end

def generate_random_array(size, range)
  new_array = []
  size.times { new_array.push(rand(range))}
  new_array
end

puts "Enter array size: "
array_size = gets.chomp.to_i
puts "Enter random range: "
rand_range = gets.chomp.to_i
random_array = generate_random_array(array_size,rand_range)
puts "Random array: #{random_array}" 
puts "Sorted array: #{merge_sort(random_array)}"