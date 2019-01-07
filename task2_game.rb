class Game
	def my_game 
		r = Random.new
		@computer_guess_number=r.rand(5..150)
		puts @computer_guess_number

		puts "Let's Strat the Game...!!!\n please Guess the number...!!"
		10.times do |item|		
			@player_guess_number=gets.to_i
			if @player_guess_number>@computer_guess_number 
				if item==9

				else
				puts"This is greater then selected number...Try Again"
				end
			elsif @player_guess_number<@computer_guess_number

				if item==9
				else
				puts "This is lesser then selected number...Try Again"
				end

				
			else
				puts "Congratulations, You got the number #{@computer_guess_number} in #{item+1} attempts(try)"	
				break;
			end 
			if item==9
			puts "sorry!!! You lose this game...!!"
			end
		end
	end
end
game=Game.new
game.my_game