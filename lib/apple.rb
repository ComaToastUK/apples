require './lib/bowl'

class Apple

  def initialize
    @rotten = true
  end

  def rotten?
    @rotten
  end

  attr_writer :rotten
  # def rotten=(new_value)
  #   @rotten = (new_value)
  # end
end
