def map (source)
	new = []
	i = 0
	while i < source.length do
		new.push(yield(source[i]))
		i += 1
	end
	return new
end

def reduce (array, starting_point = 0)
  i = 0
	while i < array.length do
		memo = yield(memo, array[i])
		i += 1
  end
  
	return memo
end
