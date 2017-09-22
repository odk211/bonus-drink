class Triangle
  def initialize(a, b, c)
    @a, @b, @c = [a, b, c].sort!
  end

  def to_s
    return '正三角形ですね！' if equilateral_triangle?
    return '二等辺三角形ですね！' if isosceles_triangle?
    return '不等辺三角形ですね！' if triangle?
    '三角形じゃないです＞＜'
  end

  def equilateral_triangle?
    triangle? && @a == @b && @b == @c
  end
  
  def isosceles_triangle?
    triangle? && (@a == @b || @b == @c)
  end

  def triangle?
    @a > 0 && (@a + @b) > @c
  end

end

a, b, c = ARGV.map { |arg| arg.gsub(/,\Z/, '').to_r }

triangle = Triangle.new(a, b, c)

puts triangle.to_s
