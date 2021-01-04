def bubble_sort (array)
  iterations = array.length - 1
  while iterations > 0 do
    position = 0
    iterations.times do
      if array[position] > array[position + 1]
        temp = array[position]
        array[position] = array[position + 1]
        array[position + 1] = temp
      end
      position += 1
    end
    iterations -= 1
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
p bubble_sort([13, 6, 7, 21, 45, 9, 2, 100])
p bubble_sort([99, 98, 97, 90, 70, 60, 20, 13, 3, 10])
