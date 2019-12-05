source = ARGF.read.split(",").map(&:to_i)

(0..99).each do |first_noun|
  (0..99).each do |first_verb|
    opcodes = source.dup

    opcodes[1] = first_noun
    opcodes[2] = first_verb

    instruction_pointer = 0

    loop do
      opcode, noun, verb, target = opcodes[instruction_pointer..instruction_pointer + 4]

      case opcode
      when 1
        opcodes[target] = opcodes[noun] + opcodes[verb]
      when 2
        opcodes[target] = opcodes[noun] * opcodes[verb]
      when 99
        if opcodes[0] == 19690720
          p first_noun * 100 + first_verb
          exit
        end

        break
      end
      instruction_pointer += 4
    end
  end
end
