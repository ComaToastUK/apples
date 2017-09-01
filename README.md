## Isolating the Subject Under Test

#Learning outcomes

Practice test driving code
Undertand how to isolate tests
Introduction

Here’s a simple brief:

I have a bowl of apples and I want to be able to know how many rotten apples there are in my bowl.

Let’s break this down.

Exercise 1 (5 mins) :apple:

Decide what a user would type into IRB in order to satisfy the brief.

Imagine how a user would use the program. Even if this ends up changing, or is too simple, it feels good because all it needs to do is simply satisfy the brief.

# example_usage.rb

apple = Apple.new # create an apple
bowl = Bowl.new([apple]) # create a bowl with that apple

bowl.rotten_apples_count # find out how many rotten apples are in the bowl
Exercise 2 (10 minutes) :apple:

I want to know if an apple is rotten! Imagine what method you would define for Apple and what it would return.

Write the first test for Apple. Keep it as simple as possible.

Write the code that passes this test.

Exercise 3 (10 minutes) :apple:

I want to know how many apples are rotten!

Hint: Revisit what the user would type into IRB

Write the first test for Bowl. Keep it as simple as possible.

Write the code that passes this test.

Isolating the Test

What was the subject under test in exercise 2?

What was the subject under test in exercise 3?

Bowl or Apple? Neither or Both?

Why is this helpful or unhelpful?

Let’s isolate it.

Exercise 4 (10 minutes) :apple:

describe Bowl do
  describe '#rotten_apples_count' do
    it 'returns 1' do

      apple = Apple.new
      bowl = Bowl.new([apple])
      expect(bowl.rotten_apples_count).to eq 1
    end

    it 'returns 2' do
      normal_apple = Apple.new
      normal_apple.rotten = false

      rotten_apple = Apple.new

      bowl = Bowl.new([normal_apple, rotten_apple])

      expect(bowl.rotten_apples_count).to eq 1
    end
  end
end
Isolate the test.

Exercise 5 (10 minutes) :apple:

Use RSpec syntax to replace the fake objects.

Extension

https://github.com/makersacademy/skills-workshops/tree/master/week-1/mocking_1
