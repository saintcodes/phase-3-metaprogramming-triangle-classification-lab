class Triangle

  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end 

  def kind
    if a == b && a == c
      :equilateral
    elsif (a == b || a == c || b == c)
      :isosceles
    elsif a != b && a != c
      :scalene
    end
  end
  
  class TriangleError < StandardError
    puts "error"
    # def message
    #   if (a<=0 || b<=0 || c<=0)
    #     "Error"
    #   elsif ((a + b < c) || (a + c < b) || (b + c < a))
    #     "Error"
    #   end
    # end
  end

end
