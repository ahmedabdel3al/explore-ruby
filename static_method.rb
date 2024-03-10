# frozen_string_literal: true

module StaticMethod

  def self.extended(target)
    puts "#{self} was extended by #{target}"
  end

  def type
    puts "The Type is Ruby"
  end
end
