def greeter()
	yield
end

phrase = Proc.new{"Hello there!"}

puts greeter(&phrase)

