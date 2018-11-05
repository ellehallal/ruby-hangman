def hangman
  puts new_word


end

def new_word
  words = ["apple", "banana", "elephant", "coffee", "dolphin", "window"]
  words.sample
end


# User should be greeted by a message
# User has a fixed number of guesses
# Shows which letters have been guessed correctly
# Shows if a user has won or lost


#core method with different methods
hangman
