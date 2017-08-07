array = []

p "Fill array, or 'Enter' to end input"
while true
	p 'Enter number'
  input = gets.chomp
  break if input.empty?
  array << input
end

if array.any?
	max = array.each_with_index.max
	min = array.each_with_index.min

	array[min[1]] = max[0]
	array[max[1]] = min[0]

	p array
else
	p 'Array is empty'
end