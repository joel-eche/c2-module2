R = 8.314

def calculate_pressure(chemical_amount, temperature, volume)
    return (chemical_amount * R * temperature) / volume
end

pressure = calculate_pressure(5, 500, 2)

puts pressure.round(1)