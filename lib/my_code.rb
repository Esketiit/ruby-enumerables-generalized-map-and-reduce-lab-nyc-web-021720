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
  sum = starting_point

  array.each do |value|
    sum = yield(sum, value)

    if (!value)
      return false
    end
  end

  return sum
end
