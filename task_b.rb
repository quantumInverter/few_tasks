array = []

p "Fill array, or 'Enter' to end input"
while true
	p 'Enter number'
  input = gets.chomp
  break if input.empty?
  array << input
end

if array.any?
	min = array.each_with_index.min
	array[min[1]] = array.max

	second_min = array.each_with_index.min
	array[min[1]] = min[0]

	p min, second_min
else
	p 'Array is empty'
end