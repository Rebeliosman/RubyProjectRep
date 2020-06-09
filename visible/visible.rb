variable = 1

class MyClass
  def initialize
    @variable = 2
  end

  def check_variables
    puts 'In MyClass:'
    puts "variable 'variable': #{defined?(variable)}"
    puts "variable '@variable': #{defined?(@variable)}"
  end
end

obj = MyClass.new
obj.check_variables


puts 'Out MyClass:'
puts "variable 'variable': #{defined?(variable)}"
puts "variable '@variable': #{defined?(@variable)}"
