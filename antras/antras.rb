# frozen_string_literal: true

# Class to get the type of a triangle
class Triangles
  def initialize(a_str, b_str, c_str)
    @a = a_str.chomp.to_i
    @b = b_str.chomp.to_i
    @c = c_str.chomp.to_i
  end

  def getarea
    p = (@a + @b + @c) / 2.0
    Math.sqrt(p * (p - @a) * (p - @b) * (p - @c))
  end

  def scalene?
    @a != @b && @b != @c && @a != @b
  end

  def isosceles?
    @a == @b || @b == @c || @a == @c
  end

  def equilateral?
    @a == @b && @b == @c && @a == @b
  end

  def invalid?
    @a.negative? || @b.negative? || @c.negative?
  end

  def type
    return 'Trikampio sudaryti neimanoma' if invalid?

    area = getarea
    if area.positive?
      return "Trikamis yra ivairiakrastis ir jo plotas: #{area}" if scalene?
      return "Trikamis yra lygiakrastis ir jo plotas: #{area}" if equilateral?
      return "Trikamis yra lygiasonis ir jo plotas: #{area}" if isosceles?
    end

    'Trikampio sudaryti neimanoma'
  end
end

puts 'Iveskite triju krastiniu ilgius:'
t = Triangles.new(gets, gets, gets)
puts t.type
