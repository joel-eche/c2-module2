class Hailstone
  attr_accessor :number
  attr_accessor :sequence
  attr_accessor :steps

  def initialize(number)
    @number = number
    @sequence = "#{number} "
    @steps = 1
  end

  def calculate_hailstone()
    aux_number = @number

    until aux_number == 1
      aux_number = aux_number % 2 == 0 ? aux_number / 2 : (aux_number * 3) + 1
      @sequence += "#{aux_number} "
      @steps += 1
    end
  end

  def print_results()
    puts "Sequence: #{@sequence}"
    puts "Steps: #{@steps}"
  end
end

print "Give me a positive integer: "
number = gets.chomp.to_i

hailstone = Hailstone.new(number)
hailstone.calculate_hailstone()
hailstone.print_results()
