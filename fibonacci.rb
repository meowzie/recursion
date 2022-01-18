# frozen_string_literal: true

def fibs(number)
  # a method that takes a number as an arugment and outputs an array
  # containing that many numbers from the fibonacci sequence
  sequence = [0, 1]

  until sequence.length == number + 1
    first = sequence[-2]
    second = sequence[-1]
    sequence.push(first + second)
  end
  sequence
end

def fibs_rec(position, thing = [])
  # returns the fibonacci number in the position inputted
  if position.zero?
    0
  elsif position == 1
    1
  else
    fibs_rec(position - 1, thing) + fibs_rec(position - 2, thing)
  end
end
