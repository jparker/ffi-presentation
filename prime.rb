#!/usr/bin/env ruby
# frozen_string_literal: true

class Integer
  def prime?
    return true if self == 2
    return false if even?

    3.step(to: (self ** 0.5).to_i, by: 2).with_index.none? do |div, i|
      (self % div).zero?
    end
  end
end

if __FILE__ == $0
  n = ARGV[0].to_i

  if n.prime?
    puts "#{n} is prime"
  else
    puts "#{n} is not prime"
  end
end
