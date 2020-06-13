class Book < Item

attr_reader :title, :genre, :author

  def initialize(params)
    super

    @title = params[:title]
    @genre = params[:genre]
    @author = params[:author]
  end

  def to_s
    puts "--------------"
    puts "Book:  #{@title}."
    puts "Genre #{@genre}."
    puts "Author #{@author}."
    puts "--------------"
  end

end
