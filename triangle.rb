# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
class Array
  def is_unique?
    return self.uniq.count == 1
  end

  def is_triangle?
    return (self[0] + self[1] > self[2]) && (self[1] + self[2] > self[0]) && (self[0] + self[2] > self[1])
  end
end

def triangle(a, b, c)
  if ![a,b,c].is_triangle?
    raise TriangleError.new("Fails Triangle Inequality Theorem")

  else
    if [a,b,c].is_unique?
      :equilateral

    elsif [a,b].is_unique? || [b,c].is_unique? || [a,c].is_unique?
      :isosceles

    else
      :scalene

    end
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError

end
