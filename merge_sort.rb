# frozen_string_literal: true

require 'pry-byebug'
require 'benchmark'

def merge_sort(array)
  if array.length < 2
    array
  else
    merge(merge_sort(array[0...array.length / 2]), merge_sort(array[array.length / 2...array.length]))
  end
end

def merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1...left.length], right)
  else
    [right.first] + merge(left, right[1...right.length])
  end
end
