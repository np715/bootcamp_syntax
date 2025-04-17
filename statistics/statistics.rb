# statistics.rb
class Statistics
  def initialize(numbers)
    @numbers = numbers
  end

  def find_max
    if  @numbers.nil? or @numbers.empty?
      return nil
    end

    max_value = @numbers[0]
    @numbers.each do |num|
      if  num > max_value
       max_value = num
      end
    end
    max_value
  end

  def find_min
    if  @numbers.nil? or @numbers.empty?
      return nil
    end

    min_value = @numbers[0]
    @numbers.each do |num|
      if  num < min_value
       min_value = num
      end
    end
    min_value
  end

  def average
    if @numbers.empty?
      return 0
    end

    total = 0
    @numbers.each do |num|
      total += num
    end
    total.to_f/ @numbers.length
      
  end

  def mode
    freq = @numbers.tally
    max_freq = freq.values.max
    freq.select { |k, v| v == max_freq }.keys
  end

  def even_numbers
  total = []
    @numbers.each do |num|
      if num%2 == 0
        total << num
      end
    end
    total
  end

  def count_vowels(sentence)
    sentence.scan(/[aeiou]/i).count
  end

  def factorial(n = numbers.first)
    if n.nil?
      return nil
    end

    if n == 0 || n == 1
      return 1
    else
      return n*factorial(n-1)
    end
  end

end
