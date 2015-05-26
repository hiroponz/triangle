class Triangle
  attr_reader :sides

  def initialize(*sides)
    @sides = sides.map(&:to_f).sort
  end

  def is_valid?
    return false unless @sides.length == 3
    return false if @sides.first <= 0
    @sides[0] + @sides[1] > @sides[2]
  end

  def category
    if !is_valid?
      :invalid
    elsif sides[0] == sides[1] && sides[1] == sides[2]
      :regular
    elsif sides[0] == sides[1] || sides[1] == sides[2]
      :isosceles
    else
      :scalene
    end
  end
end
