def hangman
  solution = new_word.split("")
  wrong_guesses = 8
  correct_letters = ["_"] * solution.length
  wrong_letters = []

  puts "Hello, welcome to Hangman!"
  puts"The mystery word contains #{solution.length} letters."
  puts"You can have up to #{wrong_guesses} incorrect guesses before your man is hanged!"
  puts"Let's begin:"
  puts "#{correct_letters.join(" ")}"
  puts "Guess a letter:"

  guess = gets.chomp

  solution.each_with_index do |letter, index|
    while solution != correct_letters && wrong_guesses != 0
      if guess == letter
        correct_letters[index] = letter

        puts "#{letter} is correct! This is what your mystery word looks like so far:"
        puts "#{correct_letters.join(" ")}"
        puts "Please guess another letter:"

        guess = gets.chomp
      else
        wrong_guesses -=1
        wrong_letters << guess
        puts "That's incorrect. You have #{wrong_guesses} left. Please guess again:"
        guess = gets.chomp
      end

      #while loop
      #if wrong guesses == 0, game over - game over method
    end
  end

  # if word is correct then This
  # else if not exit game over



end

def new_word
  "apple"
  # words = ["apple", "banana", "elephant", "coffee", "dolphin", "window"]
  # words.sample
end

hangman


# User should be greeted by a message - done
# User has a fixed number of guesses
# Shows which letters have been guessed correctly
# Shows if a user has won or lost


#core method with different methods

#stretch goals
# Show a list of the wrong letters
# Computer picks a random word - done
# User can choose to play again
# draw hangman with each incorrect guess
