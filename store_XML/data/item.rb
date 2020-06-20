class Item

def initialize(params)
    @price = params[:price]
    @amount = params[:amount]
end

def price
  @price
end

def update(options)
end

def info
end

def show
  "#{info} - #{@price} USD. [Amout avalable: #{@amount}]"
end

def self.showcase(products)
  item.each_with_index do |item, index|
    puts "#{index}: #{item.show}"
  end
end

def self.read_from_XML(file_name)

  file_path = File.dirname(__FILE__) + '/' + file_name'
  unless File.exist?(file_path)
    abort "File #{file_path} not found." # Не найден файл, завершение программы
  end

  file = File.new(file_file_path)
  doc = REXML::Document.new(file)
  file.close

  # цикл по всем элементам в каждом тэге <product>

  result =[]
  item = nil

doc.elements.each ('product/product') do |product_node|

    price = product_node.attributes['price'].to_i
    amount = product_node.attributes.['amount'].to_i

# в тэге Book

    product_node.elements.each ('book') do |book_node|

    item = Book.new(price, amount)
    item.update (
      title: book_node.attributes['title']
      author: book_node.attributes['author']
    )
    end

# в тэге Movie

    product_node.elements.each ('movie') do |movie_node|

    item = Movie.new(price, amount)
    item.update (
      title: movie_node.attributes['title']
      director: movie_node.attributes['director']
      year: movie_node.attributes['year']
    )
    end

# в тэге Disk

    product_node.elements.each ('disk') do |disk_node|
    item = Disk.new(price, amount)
    item.update (
      title: disk_node.attributes['title']
      band: disk_node.attributes['band']
      genre: disk_node.attributes['genre']
      year: disk_node.attributes['year']
    )
    end

  result.push(item)
end

return result
end
end
