opcodes = ARGF.read.split(",").map(&:to_i)
# opcodes = [2, 4, 4, 5, 99, 0]

opcodes[1] = 12
opcodes[2] = 2

position = 0
location = 0

loop do
  opcode, op1, op2, target = opcodes[location..location + 4]

  # p [opcode, op1, op2, target]

  case opcode
  when 1
    opcodes[target] = opcodes[op1] + opcodes[op2]
  when 2
    opcodes[target] = opcodes[op1] * opcodes[op2]
  when 99
    break
  end
  location += 4
end

p opcodes
