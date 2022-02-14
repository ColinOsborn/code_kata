require 'pry'

class Palindrome

  def is_palindrome(x)
    if x > -1
      arr = x.digits
      arr.reverse == arr
    else
      false
    end
  end

  def is_palindrome(x)
    arr = x.digits
    arr.first(2) == arr.last(2)
  end

  
def is_palindrome(x)
  if x < 0 || x % 10 == 0 && x != 0
      return false
  else
      x % 10 
  end
end
end


