# => bowl = Bowl.new
# => apple = Apple.new
# (10).times do bowl.add_apple(apple)
#


#Tests

# is the apple rotten?
require './lib/apple'

describe Apple do
  it 'returns true' do
    apple = Apple.new
    expect(apple.rotten?).to eq true
  end

  it 'returns false' do
  apple = Apple.new
  apple.rotten=false
  expect(apple.rotten?).to eq false
  end
end
