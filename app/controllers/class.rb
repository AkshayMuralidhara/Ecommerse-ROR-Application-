class V

end

def V.me
	"I am vishnu"
end


class V
def V.me
	"I am vishnu"
end	
end

class String
  def to_me?
  	"I am from string class"
  end
end
#----method overridding
class A
def x
puts "hello"
end
end

class B < A
	def x
		puts "bye"
	end
end

#---method overloading

class A 
	def x
		puts "hello"
		
	end
	def X#(0) with arguments
		puts "bye"
	end
end

#---case statement

puts "enter the case"
choice=gets.chomp
case choice
	when 1 :puts "1"
	when 2:puts "2"
	else :puts "something else"
end

#--proc
p=proc.new {|a| puts "a"}
p.call

#lambda
l=lambda{|a| puts "a"}
l.call