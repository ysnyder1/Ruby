class Player
  @health = warrior.health
  def play_turn(warrior)
   if warrior.feel.empty?
       if @health < 10
           warrior.rest!
       else
            warrior.walk!
       end
   else
     warrior.attack!
   end
  end
end
