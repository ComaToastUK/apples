require './lib/apple'

class Bowl

  def initialize (apples)
    @apples = apples
  end

  def rotten_apples_count
    #loop through the array and find the values that return true
    @apples.select(&:rotten?).count
  end
end
