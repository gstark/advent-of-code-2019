modules = ARGF.readlines.map(&:to_i)

puts modules.map { |_module| _module / 3 - 2 }.sum
