# frozen_string_literal: true

module Ruby

  def self.prepended(target)# Implementation of prepend method
    puts "#{self} has been prepended to #{target}"
  end

  def boly
    puts "in ruby module"
  end
  def type
    puts "The Type belongs to Ruby"
  end

end
