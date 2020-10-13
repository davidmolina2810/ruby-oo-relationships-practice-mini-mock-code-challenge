require 'pry'
require_relative './book'
require_relative './author'

david = Author.new("David")
ash = Author.new("Ash")
jorge = Author.new('Jorge')

david.write_book("Book", 10)
ash.write_book("Book2", 1)
jorge.write_book("book", 10)

ash.write_book("Book3", 100)


binding.pry


