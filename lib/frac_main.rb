require "./gcd.rb"

class Fraccion
  attr_reader :n, :d  
  
  def initialize(n,d)
    max = gcd(n,d)
    @n = n / max
    @d = d / max
  end 
 
 def num
   return @n
 end
 
 def denom
   return @d
 end
  
 def to_s
   return %Q(#{@n}/#{@d}) 
 end
 
   def ==(other)
    if((@n==other.n) && (@d==other.d))
      return true
   else
     return false
   end
   
  end
  
  def abs
     Fraccion.new(num.abs,denom.abs)
  end
  
  def reciprocal
     Fraccion.new(denom,num)
  end
  
   def -@
    Fraccion.new(-num, denom)
  end
  
   def +(other)
    x=(@n*other.d)+(@d*other.n)
    y=(@d*other.d)
    max_ = gcd(x,y)
    Fraccion.new(x/max_, y/max_)
 
  end
  
  def -(other)
    x=(@n*other.d)-(@d*other.n)
    y=(@d*other.d)
    max_ = gcd(x,y)
    Fraccion.new(x/max_, y/max_)
 
  end
  
  def *(other)
    x=(@n*other.n)
    y=(@d*other.d)
    max_ = gcd(x,y)
    Fraccion.new(x/max_, y/max_)
 
  end
  
  def /(other)
    x=(@n*other.d)
    y=(@d*other.n)
    max_ = gcd(x,y)
    Fraccion.new(x/max_, y/max_)
 
  end
  
  def % (other)
    x=(@n%@d)
    y=(other.n%other.d)
    max_ = gcd(x,y)
    Fraccion.new(x/max_, y/max_)
 
  end
  
  def < (other)
   if((@n*other.d)<(@d*other.n))
      return true
   else
     return false
   end
  end 
 
 def > (other)
   if((@n*other.d)>(@d*other.n))
      return true
   else
     return false
   end
  end 
  
  
  
  def <= (other)
   if((@n*other.d)<=(@d*other.n))
      return true
   else
     return false
   end
  end 
 
 def >= (other)
   if((@n*other.d)>=(@d*other.n))
      return true
   else
     return false
   end
  end   
end
  