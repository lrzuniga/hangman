#add word
word = "victory"

user_word = ""

#substitute word with underscores
#needs regex
 user_word = word.gsub(/\w/,"_")
 #alternate way .gsub (/[a-zA-Z]*/, "_"), for numbers (/\d/, "_")

puts user_word
