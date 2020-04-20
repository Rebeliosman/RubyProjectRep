class BodyBilder

  def initialize (biceps, triceps, chest)
    @biceps = biceps
    @triceps = triceps
    @chest = chest
  end

  def traning (traning_muscule)
    case traning_muscule
    when 'biceps'
      @biceps += 1
    when 'triceps'
      @triceps += 1
    when 'chest'
      @chest += 1
    end
  end

  def show_muscules
    puts "Triceps muscule index is #{@triceps}"
    puts "Biceps muscule index is #{@biceps}"
    puts "Chest muscule index is #{@chest}"
  end
end
