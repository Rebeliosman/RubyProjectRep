class Movie < Item

   attr_reader :title, :year, :director

    def initialize(params)
      super

      @title = params[:title]
      @year = params[:year]
      @director = params[:director]
    end

    def self.from_file(path)
      lines = File.readlines(path, encoding: 'UTF-8').map { |l| l.chomp }

      self.new(
      title: lines[0],
      director: lines[1],
      year: lines[2].to_i,
      price: lines[3].to_i,
      amount: lines[4].to_i
    )

    end


    def to_s
      puts "--------------"
      puts "Movie #{@title}."
      puts "Year: #{@year}."
      puts "Director: #{@director}."
      puts "#{@price} USD. (Amount avalable #{@amount})"
      puts "--------------"
    end
end
