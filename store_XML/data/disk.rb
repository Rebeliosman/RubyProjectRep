class Disk < Item

  def update(options)
    @title = options[:title]
    @band = options[:band]
    @genre = options[:genre]
    @year = options[:year]
  end

  def info
      "Disk #{@title}, Band: #{@band}, Genre #{@genre}, Year: #{@year}"
  end

end
