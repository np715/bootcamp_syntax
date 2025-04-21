# my_functions.rb

class BrokenFunctions
   def odd_even(n)
     if n % 2 == 0 
         puts "Even number."
      else
         puts "Odd number."
      end
   end

   def is_prime(n)
    if n <= 1 
        return false
     elsif n <= 3
        return true
     elsif n % 2 == 0 && n % 3 == 0
        return false
   end
 
      i = 5  
      while i * i <= n
      if n % i == 0 || n % (i + 2) == 0
         return false
      end
         i += 6
      end
     
      return true
   end

   def find_longest_and_shortest_words(words)
     longest_word = ""
     shortest_word = words[0]

     words.each do |word|
       if word.length > longest_word.length
           longest_word = word
       elsif word.length < shortest_word.length
           shortest_word = word
       end
     end
 
     return [shortest_word, longest_word]
   end
end
 