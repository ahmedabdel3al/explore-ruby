# frozen_string_literal: true

class Vehicle
  def self.inherited(car_type)
    puts "#{car_type} is a kind of Vehicle"
  end
end
