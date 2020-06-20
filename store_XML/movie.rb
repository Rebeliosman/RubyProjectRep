class Movie < Item

  def update(options)
    @title = options[:title]
    @director = options[:director]
    @year = options[:year]
  end

  def info
      "Movie: #{@title}, Director: #{@director}, Year: #{@year}"
  end

end
