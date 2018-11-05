def hangman
  solution = new_word.split("")
  wrong_guesses = 8
  correct_letters = [""] * solution.length
  wrong_letters = []

  puts """
  Hello, welcome to Hangman!
  The mystery word contains #{solution.length} letters.
  You can have up to #{wrong_guesses} incorrect guesses before your man is hanged!
  Let's begin:
  """
  puts "_ " * solution.length



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
