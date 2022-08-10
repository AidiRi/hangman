class Hangman

	def initialize
		# ? [letters] var creates range from 'a' through 'z'
		# creating an array so that, after each wrong guess, can remove letter from array
		@letters = ('a'..'z').to_a
		# @word; turn var into instance var; can be accessed in any method in the class
		# ? .sample 
		@word = words.sample
		@lives = 7
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

	def print_teaser
		word_teaser = ""

		@word.first.size.times do 
			# word_teaser = word_teaser.concat("_ ")
			word_teaser += "_ "
		end

		puts word_teaser
	end

	def make_guess
		if @lives > 0
			puts "Enter a letter"
			# .chomp	=> removes \r return line as default
			guess = gets.chomp

			puts "You guessed #{guess}"

			good_guess = @word.first.include? guess  

			if good_guess
				puts "Good guess!"
			else
				@letters.delete(guess)
				@lives -= 1
				puts "Try again. You have #{ @lives } guesses left."

				make_guess
			end
		else 
			puts "Game over!"
		end 
	end

	def begin
		# ask user for a letter
		puts "New game started... your word is #{ @word.first.size } characters long"
		print_teaser
		
		puts "Clue: #{ @word.last }"
		
		make_guess
	end  

end
	
	game = Hangman.new
	game.begin 