class Dessert
  def name
      @name
  end
  def name=(n)
      @name = n
  end
  def calories
      @calories
  end
  def calories=(c)
      @calories=c
  end
  
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    if @calories < 200 && delicious?
        return true
    end
  end
  def delicious?
    if @flavor == "licorice"
        return false
    else
        return true
    end
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(flavor)
    @flavor = flavor
    @calories = 5
    @name = @flavor + " jelly bean"
  end
end
