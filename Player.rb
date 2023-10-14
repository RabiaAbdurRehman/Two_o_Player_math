
class Player
  attr_accessor :name, :life

  def initialize(name, lives)
    @name = name
    @life = lives
  end

  def Loses_life
    @life -= 1
    "#{@name} loses a life, #{@name} is left with #{@life} lives"
  end
end
