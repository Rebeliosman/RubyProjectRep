class Movie < Item

   attr_reader :title, :year, :director

    def initialize(params)
      super

      @title = params[:title]
      @year = params[:year]
      @director = params[:director]
    end

    def to_s
      puts "--------------"
      puts "Movie #{@title}."
      puts "Year: #{@year}."
      puts "Director: #{@director}."
      puts "--------------"
    end
end
