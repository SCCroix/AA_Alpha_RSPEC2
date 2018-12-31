

def test(&prc)
  prc = Proc.new {|num1,num2| num2 <=> num1} unless prc
  return prc.call(2,3)
end

puts test
puts test {|num1,num2| num1 <=> num2}
