class Triangle
  attr_accessor :a1, :b2, :c3, :kind


  def initialize(a1, b2, c3)
    @a1 = a1
    @b2 = b2
    @c3 = c3
  end

  def kind
    #! what qualifies as a triangle?
    if (@a1 * @b2 * @c3) == 0 || (@a1 + @b2) <= @c3 || (@b2 + @c3) <= @a1 || (@a1 + @c3) <= @b2
      begin
        raise TriangleError
          puts error.message
      end
    elsif @a1 == @b2 && @a1 == @c3
      self.kind = :equilateral
    elsif @a1 == @b2 || @b2 == @c3 || @a1 == @c3
      self.kind = :isosceles
    else
      self.kind = :scalene
    end
  end

  class TriangleError < StandardError
    def message
      puts "This ain't no triangle!"
    end
  end
end
