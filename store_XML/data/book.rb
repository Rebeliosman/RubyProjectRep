class Book < Item

def update(options)
  @title = options[:title]
  @author = options[:author]
end

def info
    "Book #{@title}, Author: #{@author}"
end
end
