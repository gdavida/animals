require "pry"

class Dog
	attr_accessor :name, :breed, :size, :age, :sex


	def initialize(options={})
    @name         = options[:name]
    @breed        = options[:breed]
    @size    			= options[:size]
    @age   		 		= options[:age]
    @sex					= options[:sex]
  end
end