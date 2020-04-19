print "---------------------------- WELCOME TO CUPCAKE BUSINESS ----------------------------\n"\
      "Bread\t\t\t\t\tFrosting\t\t\t\tFilling (optional)\n"\
      "Vanilla $0.50\t\t\t\tVanilla $0.60\t\t\t\tNutella $1.00\n"\
      "Chocolate $0.75\t\t\t\tOreo $1.10\t\t\t\tStrawberry $0.55\n"\
      "Red Velvet $0.85\t\t\tMint chocolate $1.45\t\t\tPeanut butter $0.45\n"\
      "\n"\
      "Presentations:\n"\
      "Individual (1 cupcake): No discount\n"\
      "Six pack (6 cupcakes): Give a discount of 4% over the total price\n"\
      "Dozen pack (12 cupcakes): Give a discount of 10% over the total price\n\n\n"\

print "How many cupcakes do you want?: "
num_cupcakes = gets.chomp.to_i

accumulated = 0.0
discount = 0.0

case num_cupcakes
when 6
  discount = 0.04
when 12
  discount = 0.1
end

choice = ""
until  choice == "vanilla" || choice == "chocolate" || choice == "red velvet"
  puts "Choose bread (Vanilla, Chocolate, Red Velvet): "
  choice = gets.downcase.chomp
end

case choice
when "vanilla"
  accumulated += 0.50
when "chocolate"
  accumulated += 0.75
else
  accumulated += 0.85
end

until choice == "vanilla" || choice == "oreo" || choice == "mint chocolate"
  puts "Choose frosting (Vanilla, Oreo, Mint chocolate): "
  choice = gets.downcase.chomp
end

case choice
when "vanilla"
  accumulated += 0.60
when "oreo"
  accumulated += 1.10
else
  accumulated += 1.45
end

until choice == "Nutella" || choice == "Strawberry" || choice == "mint chocolate" || choice == ""
  puts "Choose filling (Nutella, Strawberry, Peanut butter): "
  choice = gets.downcase.chomp
end

case choice
when "vanilla"
  accumulated += 1.00
when "oreo"
  accumulated += 0.50
when "mint chocolate"
  accumulated += 0.45
end

puts "Great choice!, the total amount is: #{accumulated * (1 - discount)}"