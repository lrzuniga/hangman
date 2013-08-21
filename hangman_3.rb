class Game
#comment
	def play_game
		get_a_word
		hide_the_word
		while @word != @user_word
			guess_the_word
			match_the_letter
		end
	end

	def get_a_word
 		#add word
		@word = "victory"
	end

	def hide_the_word
		#substitute word with underscores
		#needs regex
 		@user_word = @word.gsub(/\w/,"_") #@makes it an instance variable
 		#alternate way .gsub (/[a-zA-Z]*/, "_"), for numbers (/\d/, "_")
 		puts @user_word
 	end

 	def guess_the_word
 		puts "Guess a letter"
 		#accept user input
		@input = gets.chomp
 	end

 	def match_the_letter
 		index = 0
 		@word.each_char do |l|
 			#puts "input: #{@input}letter: #{l}" #\n backslash \t tab
 			if l == @input
 				@user_word[index] = @input
 			end
 			index += 1
 		end

 		puts @user_word
 	end
end

game = Game.new #start a new game

game.play_game
