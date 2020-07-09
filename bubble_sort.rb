# frozen_string_literal: true

# ------------------------------------
#
# >  bubble_sort([4, 3, 78, 2, 0, 2])
# => [0, 2, 2, 3, 4, 78]
#
# ------------------------------------

# require 'byebug'

array = [4, 3, 78, 2, 0, 2]

def bubble_sort(array)

  array.length.times do
    array.each_with_index do |num, idx|
      next if idx == array.length - 1

      current_num = num
      next_num = array[idx + 1]

      next unless current_num > next_num

      lower_num = next_num
      array[idx] = lower_num
      array[idx + 1] = num
    end
  end
  array
end

p bubble_sort(array)
