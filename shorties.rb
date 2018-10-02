#Class Books
class Book
  @@all_books = []

  attr_reader :name, :owner

  def self.all
    @@all_books
  end

  def initialize(title, owner)
    @title = title
    @owner = owner
    @@all_books << self
    @owner.books << self
  end
end

#Class Shotry
class Shorty
  @@borrowers = {}
  @@returners = {}

  attr_accessor :books
  attr_reader :name

  def self.borrowers
    puts "List of lil' borrowers:"
    index = 1
    @@borrowers.each do |key,value|
      puts "#{index}. #{value.name}"
      index += 1
    end
  end

  def self.returners
    puts "List of returners:"
    index = 1
    @@returners.each do |key,value|
      puts "#{index}. #{key.name}"
      index += 1
    end
  end

  def initialize(name)
    @name = name
    @books = []
    @taken_books = []
  end

  def take_book(book)
    @taken_books << book
    @@borrowers[book.owner] = self unless self.books.include?(book) && self.taken_books.include?(book)
  end

  def return_book(book)
    @taken_books.delete(book)
    @@borrowers.delete(book.owner)
    @@returners[self] = book.owner
  end
end

#class Demo
class Demo
  def seed
    @user1 = Shorty.new('Mi')
    @user2 = Shorty.new('Po')
    @user3 = Shorty.new('Lu')
    @book1 = Book.new('Trap', @user1)
    @book2 = Book.new('Lisp', @user2)
    @book3 = Book.new('Groc', @user3)
    @user1.take_book(@book2)
    @user1.take_book(@book2)
    @user1.return_book(@book2)
    @user2.take_book(@book3)
    @user3.take_book(@book1)
  end
end

demo = Demo.new
demo.seed
Shorty.borrowers
Shorty.returners
