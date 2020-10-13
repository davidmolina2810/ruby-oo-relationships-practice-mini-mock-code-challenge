class Author
   
  attr_reader :name

  @@all = [] # holds all instances of Author

  def initialize(name)
    @name = name
    Author.all << self # on init, add self-author to all instances of Author
  end

  def books # return arr of all Book instances associated with self-author
    Book.all.select {|book| book.author == self}
  end

  def write_book(title, word_count) # create new Book instance associated with self-author
    Book.new(title, word_count, self)
  end

  def total_words # iterate through books and sum and return words
    books.sum {|book| book.word_count}
  end

  def self.all # returns arr of all instances of Author
    @@all
  end
  
  def self.most_words # returns author instance/instances with most words written
    counts = Author.all.map {|author| author.total_words}
    max_word = counts.max
    if counts.count(max_word) == 1
      Author.author_words_max
    else
      Author.all.select {|author| author.total_words == max_word}
    end
  end

  private
  def self.author_words_max 
    Author.all.max {|author1, author2| author1.total_words <=> author2.total_words}
  end

end



