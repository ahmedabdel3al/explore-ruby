# frozen_string_literal: true
require './ruby'
require './static_method'
class Coding
  include Ruby
  extend StaticMethod

  def boly
    puts "in the main class"
  end
end


