class Item
  # класс родитель Item

  attr_reader :price, :amount, :name

  # Определение атрибутов

  def initialize(params)
    @price = params[:price]
    @amount = params[:amount]
    @name = params [:name]
  end
end
