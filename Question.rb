class Question
  attr_accessor :answer

  def Generate_question
    num1 = rand(1..20)
    num2 = rand(1..20)
    @answer = num1 + num2
    puts "what does #{num1} plus #{num2} equal "
  end

  def Check_answer(user_answer)
    if user_answer.to_i === @answer
      puts "YES! You are correct"
      true
    else
      puts "Seriously? No!"
      false
    end

  end
end
