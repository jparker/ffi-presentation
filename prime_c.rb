#!/usr/env/bin ruby
# frozen_string_literal: true

require 'ffi'

module Prime
  extend FFI::Library

  ffi_lib File.expand_path 'libprime.so', __dir__

  attach_function :prime?, :is_prime, [:uint64], :bool
end

if __FILE__ == $0
  n = ARGV[0].to_i

  if Prime.prime?(n)
    puts "#{n} is prime"
  else
    puts "#{n} is not prime"
  end
end
