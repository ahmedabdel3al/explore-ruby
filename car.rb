# frozen_string_literal: true

require './vehicle'
class Car < Vehicle

  def method_missing(input, *args) # method_missing function in action
    puts "#{input} not defined on #{self}"
  end

end



Car.new.execute