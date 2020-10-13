class Book 

  attr_reader :title, :word_count
  attr_accessor :author

  @@all = [] # holds all instances of Book

  def initialize(title, word_count, author)
    @title = title
    @author = author
    @word_count = word_count
    Book.all << self # on init, add self-book to all instances of Book
  end

  def self.all # returns arr of all instances of Book
    @@all
  end

end
