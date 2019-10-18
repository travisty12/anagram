#!/usr/bin/ruby

require ('./lib/gram.rb')
puts "-"*40
puts "Anagram Checker!\n\nEnter two words and check their similarity!"
puts "-"*40
print "Enter the first word: "
word1 = gets.chomp.to_s
puts "-"*40
print "Enter the second word: "
word2 = gets.chomp.to_s
puts "-"*40
gram = Gram.new(word1,word2)
puts "#{gram.anagram()}"
puts "-"*40
