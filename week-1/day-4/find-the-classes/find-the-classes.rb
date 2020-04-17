class Book
	def initialize(name, author, number_of_pages)
		@name = name
		@author = author
		@number_of_pages = number_of_pages 
	end

	def read
		puts "Reading..."
		sleep(1.5)
		puts "I finished! #{@name} is a great book"
	end
end

class Shirt
	def initialize(color, size="s")
		@color = color
		@size = size
		@clean = true
	end

	def dress!
		if @clean
			puts "You look cool with that #{@color} shirt"
			@clean = false
		else
			puts "Maybe you need wash it first, I can't allow you dress it"
		end
	end
end

class Bottle
	def initialize(content="water", capacity_lt=1, empty=true)
		@content = content
		@capacity_lt = capacity_lt
		@empty = empty
	end

	def fill!
		if @empty
			puts "The bottle now has #{@capacity_lt}l de #{@content}"
			@empty = false
		else
			puts "The bottle is already full"
		end
	end
end

# test
puts "class Shirt"
puts "-------------------------------------------------------------------"
shirt = Shirt.new("Blue")
shirt.dress!
shirt.dress!

puts "\nclass Bottle"
puts "-------------------------------------------------------------------"
bottle = Bottle.new
bottle.fill!
bottle.fill!

puts "\nclass Book"
puts "-------------------------------------------------------------------"
book = Book.new("Harry Potter", "J. K. Rowling", 123)
book.read
