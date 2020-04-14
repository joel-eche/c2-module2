def longest_string(string_a, string_b)
    length_string_a = string_a.length
    length_string_b = string_b.length
    
    if length_string_a > length_string_b
        puts string_a
    elsif length_string_a < length_string_b
        puts string_b
    else
        puts "Thay have the same length"
    end
end

longest_string("I am the longest.", "No, you are not the longest; liar.")
