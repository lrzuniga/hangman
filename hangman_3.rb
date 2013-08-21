class Game

	def play_game
		get_a_word
		hide_the_word
		guess_the_word
	end

end



#add word
word = "victory"

user_word = ""

#substitute word with underscores
#needs regex
 user_word = word.gsub(/\w/,"_")
 #alternate way .gsub (/[a-zA-Z]*/, "_"), for numbers (/\d/, "_")

puts user_word

#accept user input
input = gets

#do matching of user_word and word


