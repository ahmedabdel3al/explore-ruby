# frozen_string_literal: true

require './person'
require './speak'

class Man < Person
  prepend Speak
end


puts Man.ancestors
# Man first one
# Person second one
# Object
# Kernel
# BasicObject

# puts Man.ancestors
#after adding speak module as include on Person
# Man
# Person
# Speak
# Object
# Kernel
# BasicObject

# after adding speak module as prepend on person
# Man
# Speak
# Person
# Object
# Kernel
# BasicObject

# after adding speak module as prepend on Man
# Speak
# Man
# Person
# Object
# Kernel
# BasicObject



