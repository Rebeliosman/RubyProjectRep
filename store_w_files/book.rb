class Book < Item

attr_reader :title, :genre, :author

  def initialize(params)
    super

    @title = params[:title]
    @genre = params[:genre]
    @author = params[:author]
  end

  def self.from_file(path)
    lines = File.readlines(path, encoding: 'UTF-8').map { |l| l.chomp }

    self.new(
    title: lines[0],
    genre: lines[1],
    author: lines[2],
    price: lines[3].to_i,
    amount: lines[4].to_i
  )
  end

  def to_s
    puts "--------------"
    puts "Book:  #{@title}."
    puts "Genre #{@genre}."
    puts "Author #{@author}."
    puts "#{@price} USD. (Amount avalable #{@amount})"
    puts "--------------"
  end

end
