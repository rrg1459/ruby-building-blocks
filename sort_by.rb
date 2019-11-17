def bubble_sort_by(array)
	(array.length - 2).times do
		(array.length - 1).times do |index|
			if yield(array[index], array[index + 1]) > 0
				array[index], array[index + 1] = array[index + 1], array[index]
			end
		end
	end
	array
end

arr = ["123456","hi","hello","hey", "year"]
new_arr = bubble_sort_by(arr) { |left,right| left.length <=> right.length }

print new_arr
