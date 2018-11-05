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

  while solution != correct_letters && wrong_guesses != 1
    if solution.include?(guess)
      solution.each_with_index do |letter, index|
        if guess == letter
          correct_letters[index] = letter
        end
      end

      puts "That is correct! This is what your mystery word looks like so far:"
      puts "#{correct_letters.join(" ")}"

      if solution != correct_letters
        puts "Here are your incorrect guesses so far: #{wrong_letters.join(" ")}"
        puts "Please guess another letter:"
        guess = gets.chomp
      end

    else
      wrong_guesses -=1
      wrong_letters << guess
      puts "That's incorrect. You have #{wrong_guesses} guesses left."
      puts "Here are your incorrect guesses so far: #{wrong_letters.join(" ")}"
      puts "Please guess again:"
      guess = gets.chomp
    end
  end

  if solution == correct_letters
    puts "Congratulations, you've guessed the correct word: #{solution.join("")}"
  else
    puts "You ran out of guesses. You lose"
    exit(0)
  end

end

def new_word
  "apple"
  # words = ["apple", "banana", "elephant", "coffee", "dolphin", "window"]
  # words.sample
end

hangman


# User should be greeted by a message - done
# User has a fixed number of guesses - ?? incorrect guesses or guesses in total?
# Shows which letters have been guessed correctly
# Shows if a user has won or lost - done


#core method with different methods

#stretch goals
# Show a list of the wrong letters
# Computer picks a random word - done
# User can choose to play again
# draw hangman with each incorrect guess
