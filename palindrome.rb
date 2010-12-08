# Palindrome, much like other similar projects, attempts to find palindromes within a string.
# In the future I may add additional utilities that maybe useful (e.g., methods to return
# the position of the discovered palindrome(s) within the string, or paragraph parsing, etc.)
#
# Author::    Eric Shelley (eric@webdesignbakery.com)
# Copyright:: Copyright (c) 2010 Web Design Bakery
# License::   The palindrome project is freely distributed under the terms of the MIT License

# This class holds the methods used to discover if a palindrome exists in a string and if a 
# string is a palindrome. More methods to come.

class Palindrome

  # Discover if palindromes exist in a string and return an array of any palindromes found
  def self.discover(string)
    @palindromes = []

    # @TODO: Strip non-alphanumeric characters from the string

    # Do a palindrome check on each index, b/c there may be
    # more than one palindrome overlapping one another
    for i in 0...string.length
      
      # Now find palindromes from this index forward (smallest possible case is three characters)
      for j in 3...string[i...string.length].length + 1
        
        # Create a substring to test if it's a palindrome
        palindrome = string[i...i + j]

        # Add the palindrome to the instance variable if a palindrome is found
        @palindromes.push(palindrome) if is_palindrome(palindrome)
      end
    end
    @palindromes
  end

  # Check if given string is a palindrome
  def self.is_palindrome(string)
    palindrome = true
    reverse = string.reverse

    limit = string.length % 2 == 0 ? string.length / 2 : string.length / 2 + 1
    for i in 0...limit
      palindrome = string[i] == reverse[i]
      return false if !palindrome # don't bother to continue if we hit a failed case
    end

    return palindrome
  end

end