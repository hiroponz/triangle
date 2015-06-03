class Triangle
  attr_reader :sides

  CATEGORY_TO_SAY = {
    invalid: "三角形じゃないです＞＜",
    regular: "正三角形ですね！",
    isosceles: "二等辺三角形ですね！",
    scalene: "不等辺三角形ですね！",
  }

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

  def say
    CATEGORY_TO_SAY[category]
  end
end

if __FILE__ == $0
  puts Triangle.new(*ARGV).say
end
