class Triangle
  attr_accessor :a, :b, :c 
  def initialize(a,b,c)
    @a = a 
    @b = b 
    @c = c 
  end 
  def kind 
    #if triangle invalid -> Custom Error 

    if (@a < 0 || @b < 0 || @c < 0) || (@a + @b < @c || @b + @c < @a || @a + @c < @b)
      # begin
      #   raise TriangleError
      # rescue TriangleError => error
      #     puts error.message
      # end
      elsif @a==0 && @b == 0 && @c == 0 
      # begin
      #   raise TriangleError
      # rescue TriangleError => error
      #     puts error.message
      # end
    #elsif :equilateral - 3 equal sides 
    elsif @a == @b && @b == @c && @a == @c 
      :equilateral
      
    #elsif :isosceles - 2 equal sides 
    elsif @a == @b || @b == @c || @a == @c
      :isosceles 
    #else :scalene - no equal 
    else 
    :scalene
    end
  end 
  
  class TriangleError < StandardError 
    def message 
      "invalid triangle"
    end 
  end #end of TriangleError 
end #end of Triangle class 
