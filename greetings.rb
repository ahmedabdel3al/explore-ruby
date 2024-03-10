# frozen_string_literal: true

module Greetings

  def self.included(person_to_be_greeted)
    puts "The #{person_to_be_greeted} is welcomed with an open heart !"
  end
end
