uestions = [
"If your partner casts a glance at an unknown woman, do you make him a scandal right on the street?",
"If your partner is late for dinner, are you sure he was on the other?"
"Are you asking him about work, about colleagues?",
"Do you think that every free minute should be spent together?",
"Is it light for you through the window?"
"Do you ever check his correspondence and rummage through his things?",
"The more he talks about his feelings, the less you believe?",
"Do you want him to be interested only in what you are interested in?",
"You always ask him where he goes and with whom he meets?",
"If you are offended by him, then keep quiet for several days?",
"Are you tormented by thoughts of his former lover?",
"He claims that he is not jealous of you because he trusts. For you, does this mean that love has passed?"
]
results = [
  # 10 и более ответов «да»
"You are painfully jealous. Do not think that if a chosen one loves you," +
"then it automatically becomes your property. You consider yourself unattractive" +
"and you’re afraid that he will leave you for the sake of some beauty. You are not sure of anything, especially" +
"in it. Think about it, because you can’t be so jealous and aggressive, it’s" +
"may lead to conflicts and even to severance of relations.",

  # 5–9 ответов «да»
"Your jealousy acts on you mobilizingly, but it is not alone that controls your behavior." +
"In a moment of weakness, it happens to you to cause scandals. But, having calmed down, you understand," +
"that there was no reason for your jealousy.",

  # Менее 5 ответов «да»

"You are completely unfamiliar with the feeling of jealousy. But anxiety and anxiety can accumulate." +
"over time. You must solve the problems that concern you with your partner."
]

yes_answers = 0

for item in questions do
  # делаем что-то с вопросом item
  puts item
  user_input = nil

while (user_input != "yes" and user_input != "no")
  puts "Enter yes or no"
  user_input = STDIN.gets.chomp.downcase
  if (user_input == "yes")
  yes_answers += 1
end
end
end

if (yes_answers >= 10)
  puts results[0]
elsif (yes_answers >=5)
  puts results[1]
else
  puts results[2]
end
