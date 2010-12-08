# Test.rb is an example of how to use the Palindrome class.
# First we need to include the palindrome.rb file. Then
# we can statically call any of the methods (currently,
# discover and is_palindrome).
#
# Author::    Eric Shelley (eric@webdesignbakery.com)
# Copyright:: Copyright (c) 2010 Web Design Bakery

require_relative 'palindrome'

palindromes = Palindrome.discover "bobiqweababcbaasifuhwe"

# Printing the array should yield the 5 palindromes 
# ("bob", "aba", "bab", "abcba", "bcb") from the string above
puts palindromes
