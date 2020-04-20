class People

  def initialize  (name, second_name, surname, age)
  @name = name
  @second_name = second_name
  @surname = surname
  @age = age
  end

  def full_name
    if @age <= 65
    return "#{@name} #{@surname}. Возраст #{@age}"
    else
    return "#{@name} #{@second_name} #{@surname}. Возраст #{@age}"
    end
  end

  def old?
    if @age <= 65
    return false
    else
    return true
    end
  end
end
