if File.exist?("./answers.txt") ||File.exist?("./questions.txt")

  answers = File.new("./answers.txt","r:UTF-8")
  questions = File.new("./questions.txt","r:UTF-8")

  question_array = questions.readlines
  answer_array= answers.readlines
  questions.close
  answers.close

  i=1
  right_answer_counter = 0
  wrong_answer_counter = 0
  while i<=question_array.size
    question_string = question_array[i-1]
    answer_string = answer_array[i-1].chomp
    puts question_string
    user_input = STDIN.gets.encode('UTF-8').chomp.downcase
      if user_input == answer_string
        right_answer_counter +=1
        puts "You are right"
      else
        wrong_answer_counter +=1
        puts "Wrong!! Right answer is #{answer_string}"
      end

      i +=1

  end

  puts "Your score is #{right_answer_counter}"

else
  puts "File not found."
end
