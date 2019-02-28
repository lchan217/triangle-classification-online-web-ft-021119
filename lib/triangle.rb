class Triangle
  attr_accessor :a, :b, :c 
  def initialize(a,b,c)
    @a = a 
    @b = b 
    @c = c 
  end 
  def kind 
    #if triangle invalid -> Custom Error 
      #sum of the lengths of any two sides of a triangle always exceeds the length of the third side
      #each side > 0 
     
    #elsif :equilateral - 3 equal sides 
      
    #elsif :isosceles - 2 equal sides 
     
    #else :scalene - no equal 
      
  end 
  class TriangleError < StandardError 
    def message 
      "invalid triangle"
    end 
  end 
end
