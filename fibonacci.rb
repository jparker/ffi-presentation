#!/usr/bin/env ruby
# frozen_string_literal: true

def fibonacci(n)
  return 0 if n <= 0
  return 1 if n == 1 || n == 2

  pred, curr, succ = 1, 1, nil

  3.upto(n) do
    succ = pred + curr
    pred = curr
    curr = succ
  end

  curr
end

if __FILE__ == $0
  n = ARGV[0].to_i
  iterations = ARGV.fetch(1) { 1 }.to_i
  puts iterations.times.map { fibonacci n }.last
end
