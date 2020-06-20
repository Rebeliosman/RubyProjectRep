class Item

def initialize(price, amount)
    @price = price
    @amount = amount
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

  puts "What to buy something? \n\n"

  products.each_with_index do |item, index|
    puts "#{index}: #{item.show}"
  end

  puts "x - to exit the store"
end

def buy
  if @amount > 0
    puts "*****"
    puts "You buy #{@info}"
    puts "*****\n\n"

    @amount -=1
    price
  else
    puts "Sorry, Item you choose is sold out."
    0
  end
end

def self.read_from_XML(file_name)

  file_path = File.dirname(__FILE__) + '/data' + file_name
  unless File.exist?(file_path)
    abort "File #{file_path} not found." # Не найден файл, завершение программы
  end

  file = File.new(file_path)
  doc = REXML::Document.new(file)
  file.close

    # цикл по всем элементам в каждом тэге <product>

  result = []
  item = nil

    doc.elements.each ("products/product") do |product_node|

    price = product_node.attributes["price"].to_i
    amount = product_node.attributes["amount"].to_i

    # в тэге Book

    product_node.each_element("book") do |book_node|

    item = Book.new(price, amount)
    item.update(
      title: book_node.attributes["title"],
      author: book_node.attributes["author"]
    )
    end

# в тэге Movie

    product_node.each_element("movie") do |movie_node|

    item = Movie.new(price, amount)
    item.update(
      title: movie_node.attributes["title"],
      director: movie_node.attributes["director"],
      year: movie_node.attributes["year"]
    )
    end

# в тэге Disc

    product_node.each_element('disc') do |disc_node|
    item = Disc.new(price, amount)
    item.update(
      title: disc_node.attributes['title'],
      band: disc_node.attributes['band'],
      genre: disc_node.attributes['genre'],
      year: disc_node.attributes['year']
    )
    end

  result.push(item)

end

return result

end
end
