# 4900568
modules = ARGF.readlines.map(&:to_i)

def fuel(_module)
  amount = [_module / 3 - 2, 0].max

  amount > 0 ? amount + fuel(amount) : amount
end

puts modules.map { |_module| fuel(_module) }.sum
