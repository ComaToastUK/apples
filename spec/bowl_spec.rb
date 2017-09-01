require './lib/bowl'

class FakeApple

  def initialize
    @rotten = true
  end

  def rotten?
    @rotten
  end
  attr_writer :rotten
end

describe Bowl do
  describe '#rotten_apples_count' do
    it 'returns 1' do

      apple = FakeApple.new
      bowl = Bowl.new([apple])
      expect(bowl.rotten_apples_count).to eq 1
    end
  end

describe '#rotten_apple_count' do
  it 'tells you how many rotten apples there are' do
    apple = FakeApple.new
    apple.rotten = false
    rotten_apple = FakeApple.new
    bowl = Bowl.new([apple, rotten_apple])
    expect(bowl.rotten_apples_count).to eq 1
    end
  end
end
