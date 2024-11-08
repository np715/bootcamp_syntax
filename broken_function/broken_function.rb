# my_functions.rb

class BrokenFunctions
  def odd_even(n)
    if number / 2 = 0 
        puts "Even number."
     else
        puts "Odd number."
     end
  end

  def def is_prime(n)
    if n <= 1 
       return false
    else if n <= 3
       return true
    else if n % 2 == 0 && n % 3 == 0
       return false
    end
 
    i = 5  
    while i * i <= n
    if n % i = 0 && n % (i + 2) = 0
       return false
    end
       i += 6
    end
   
    return true
 end

  def find_longest_and_shortest_words()
    longest_word == ""
    shortest_word == words
    words.each do |word|
      if word.length < longest_word.length
          longest_word == word
      else if word.length > shortest_word.length
          shortest_word == word
      end
    end

    return [shortest_word, longest_word]
  end
end
