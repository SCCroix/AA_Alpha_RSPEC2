require "byebug"

def reverser(&block)
  #debugger
  str = block.call.split
  str.map(&:reverse).join(" ")
end

def adder(num = 1, &block)
  num + block.call
end

def repeater(num = 1, &block)
  num.times {block.call}
end
