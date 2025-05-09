# frozen_string_literal: true

require 'benchmark'
require 'benchmark/ips'

namespace :benchmark do
  desc 'Run `hello` benchmark'
  task :hello do
    Benchmark.ips do |x|
      x.report('c') { `./hello` }
      x.report('ruby') { `ruby ./hello.rb` }
      x.compare!
    end
  end

  desc 'Run `fibonacci` benchmark'
  task :fibonacci do
    puts Benchmark.measure('c') {
      `./fibonacci 90 1000000`
    }.format('%5n | %r')

    puts Benchmark.measure('ruby') {
      `ruby ./fibonacci.rb 90 1000000`
    }.format('%5n | %r')
  end

  desc 'Run `prime` benchmark'
  task :prime do
    [4_294_967_291, 18_446_744_073_709_551_557].each do |n|
      puts Benchmark.measure("c #{n}") {
        `./prime #{n}`
      }.format('%32n | %r')

      puts Benchmark.measure("ruby #{n}") {
        `ruby ./prime.rb #{n}`
      }.format('%32n | %r')
    end
  end
end
