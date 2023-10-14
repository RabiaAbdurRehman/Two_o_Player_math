# match = Math_game.new()

# match.start()

require_relative 'Player'
require_relative 'Question'
require_relative 'Math_game'


player1 = Player.new("Sara", 3)
player2 = Player.new("Rabia", 3)

q = Question.new()

match = Math_game.new(player1, player2, q)

while match.player1.life > 0 && match.player2.life >0

  q.Generate_question
  puts "Your answer"
  user_answer = gets.chomp
  if q.Check_answer(user_answer)
    puts "#{match.player1.name}: #{match.player1.life} VS #{match.player2.name}: #{match.player2.life}"

  else
    puts match.player1.Loses_life
  end
  puts ".......New Turn......."
  match.switch_player
  puts "Current players: #{match.player1.name} (#{match.player1.life}) and #{match.player2.name} (#{match.player2.life})"
end

puts "Game Over! #{player1.life <=0? player2.name : player1.name} wins"
