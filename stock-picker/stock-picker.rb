require 'pry'

def stock_picker(array)
  indices_with_diff = array.each_with_index.reduce([0, 0, 0]) do |picks, (item, index)|
    max_gain = array.each_with_index.reduce([0, 0]) do |difference, (second_item, second_index)|
      unless index > second_index
        temp_difference = second_item - item
        if difference[1] < temp_difference
          difference[0] = second_index
          difference[1] = temp_difference
        end
      end
      difference
    end
    max_gain.unshift(index)
    if picks[2] < max_gain[2]
      picks = max_gain
    end
    picks
  end
  indices_with_diff.first(2)
end

p stock_picker([17,3,6,9,15,8,6,1,10])
