# Once again, this lab is test-driven. Run the test suite to get started. Remember that you can use the learn/rspec --fail-fast option to run the tests only up until the first failure, in order to work progressively through the tests.

# Write your solution in anagram.rb.

# Hints:

# Use an attr_accessor to create a setter and getter method for the word that the Anagram class instances are initialized with.

# How will you determine if one word is an anagram for another?

# You'll need to iterate over the array of words that the .match method takes as an argument. You will compare each word of that array to the word that the Anagram class is initialized with.
# To determine if they are anagrams, try determining if they are composed of the same letters. Remember that you can split a word into an array of letters using some_word.split(""). You can compare two arrays using the ==. For example:
# [1, 2, 3] == [1, 2, 3]
# => true

# [1, 3, 2] == [1, 2, 3]
# => false 
# Two arrays are equal if they contain the same elements, in the same order. Remember that you can .sort an array's elements. This will help in your comparison:

# [1, 3, 2].sort == [3, 2, 1].sort
# => true 

# Your code goes here!
class Anagram

    #r/w'er macro
    attr_accessor :word
  
    def initialize(word)
      @word = word
    end
  
    def match(word_array)
      word_array.select do |word|
        word.split("").sort == @word.split("").sort
      end
    end
  end