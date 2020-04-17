def array_of_fixnums?(array)
	array.inject(true) {|result, element| result && (element.is_a? Fixnum) }
end

# test
p array_of_fixnums?([1,2,3])		# true
p array_of_fixnums?(['a',1,:b])	# false
p array_of_fixnums?([])					# true