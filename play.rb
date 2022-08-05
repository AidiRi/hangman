class Hangman

	def initialize
		# ? [letters] var creates range from 'a' through 'z'
		# creating an array so that, after each wrong guess, can remove letter from array
		@letters = ('a'..'z').to_a
		# @word; turn var into instance var; can be accessed in any method in the class
		# ? .sample 
		@word = words.sample
	end

	# arr of arrs[word, clue/hint]
	# can import from separate file
	def words
		[
			["cricket", "A game played by gentlefolks"],
			["jogging", "We're not running..."],
			["vegetable", "It's in the food pyramid"],
			["messenger", "Someone with news"],
			["tomato", "A vegetable pronounced two ways"],
			["armchair", "Somewhere to rest your limbs"],
		]
	end


	def begin
		# ask user for a letter
		puts "New game started... your clue is #{@word.first}"
		# ? .chomp; removes return line?
		guess = gets.chomp

		puts "You guess #{guess}"
	end  

end
	
	game = Hangman.new
	game.begin 