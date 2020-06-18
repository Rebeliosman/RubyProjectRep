class Item
  # класс родитель Item

  attr_reader :price, :amount, :name

  # Определение атрибутов

  def initialize(params)
    @price = params[:price]
    @amount = params[:amount]
  end


  def to_s
    "#{@price} USD. (Amount avalable #{@amount})"
  end

  def update(params)
    @amount = params[:amount]
    @price = params[:price]
  end

  
end
