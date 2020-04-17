class Color
  attr_reader :r, :g, :b
  def initialize(r, g, b)
    @r = r
    @g = g
    @b = b
  end

  def brightness_index
    ( 299 * @r + 587 * @g + 114 * @b) / 1000
  end

  def brightness_difference(another_color)
    (brightness_index - another_color.brightness_index).abs
  end

  def hue_difference(another_color)
    (@r - another_color.r).abs + (@g - another_color.g).abs + (@b - another_color.b).abs
  end

  def enough_contrast?(another_color)
    brightness_difference(another_color) > 125 && hue_difference(another_color) > 500
  end
end

# test (42, 42, 42) and (210, 210, 210)

color_1 = Color.new(42, 42, 42)
color_2 = Color.new(210, 210, 210)

puts "Brightness index: #{color_1.brightness_index}"
puts "Brightness difference: #{color_1.brightness_difference(color_2)}"
puts "Hue difference: #{color_1.hue_difference(color_2)}"
puts "nough contrast?: #{color_1.enough_contrast?(color_2)}"