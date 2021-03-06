class Screen

	def cls
		puts ("\n" * 25)
		puts "\a"
	end

	def pause
		STDIN.gets
	end

end

class Game

	def display_greeting

		Console_Screen.cls 

		print "\t\t Welcome to the Ruby Number Guessing Game!" +
		"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nPress Enter to " +
				"continue"

				Console_Screen.pause

	end

	def display_instructions

		Console_Screen.cls 
		puts "INSTRUCTIONS:\n\n"

		puts "This game randomly generates a number between 1 and 100"
		puts "then it challenges you to identify this number in as few guesses as is possible"
		puts "After each guess the game will analyze your input"
		puts "Take as many turns as you need to guess the number"
		puts "Good luck!\n\n\n\n\n\n\n"
		print "Press Enter to continue"

		Console_Screen.pause
	end

	def generate_number
		return randomNo = 1 + rand(100)
	end

	def play_game 

		number = generate_number 

		loop do 

			Console_Screen.cls 

			print "\nEnter your guess and press the Enter key: "

			reply = STDIN.gets
			reply.chop!
			reply = reply.to_i

			if reply < 1 or reply > 100 then
				redo 
			end 

end