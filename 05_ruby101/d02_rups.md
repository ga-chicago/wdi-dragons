## 4.2 Rups Recap

Below are various examples of how to solve the Rups homework from last night.

```ruby
############## Question 1
#Write a function lengths that accepts a single parameter as an argument, namely an array of strings. The function should return an array of numbers. Each number in the array should be the length of the corresponding string.
################################################

#example 1
def lengths(array)
  p array.map{|word| word.length}
end

lengths(words)

#example 2

def stringLengths (arrayOfStrings)
  i = 0
  secondArray = []
  while i < arrayOfStrings.length
    secondArray.push(arrayOfStrings[i].length)
    i += 1
  end
  return secondArray
end

p words = ["hello", "what", "is", "up", "dude"]
p stringLengths(words)

# example 3
words = ["hello", "what", "is", "up", "dude"]
def lengths(arrayInput)
  wordlength = Array.new
  arrayInput.each{|word|wordlength<<word.length}
  p wordlength
end






########### Question 2
#Write a Ruby function called transmogrifier This function should accept three arguments, which you can assume will be numbers. Your function should return the "transmogrified" result
# The transmogrified result of three numbers is the product (numbers multiplied together) of the first two numbers, raised to the power (exponentially) of the third number.
# For example, the transmogrified result of 5, 3, and 2 is (5 times 3) to the power of 2 is 225.
#############################################

#example 1
def transmogrifier(num1, num2, num3)
  p (num1 * num2) ** num3
end

transmogrifier(2,5,2)

#example 2
def transmogrifier a, b, c
  p (a * b) ** c
end


########## Question 3
# Write a function called toonify that takes two parameters, accent and sentence.
#
# If accent is the string "daffy", return a modified version of sentence with all "s" replaced with "th".
# If the accent is "elmer", replace all "r" with "w".
# Feel free to add your own accents as well!
# If the accent is not recognized, just return the sentence as-is.
#############################################

#example 1

def toonify(accent, sentence)
  accent = accent.downcase
  if  accent == "daffy"
    p sentence.gsub("s", "th")
  elsif accent =="elmer"
    p sentence.gsub("r", "w")
  elsif accent == "liljohn"
    p sentence.gsub(/./, "WHAT ")
  else
    p sentence
  end
end

toonify('daffy', 'so you smell like sausage')
toonify('elmer', "I'm gonna catch that rabbit!")
toonify('lilJohn', "Nice day out today, don't you think?")

#example 2
def toonify (accent,sentence)
  if accent.downcase == 'daffy'
    return  p sentence.gsub 's', 'th'
  elsif accent.downcase == 'elmer'
    return p sentence.gsub 'r','w'
  else
    return sentence
  end
end
toonify("daffy", "so you smell like sausage")

########## Question 4
# Write a function wordReverse that accepts a single argument, a string. The method should return a string with the order of the words reversed. Don't worry about punctuation.
#############################################

#example 1
def word_reverse(string)
  p string.split.reverse.join(' ')
end
word_reverse("Now I know what a TV dinner feels like")

#example 2
def word_reverse(string)
  words = string.split(' ')
  return words.reverse
end

p word_reverse("Now I know what a TV dinner feels like")

########## Question 5
# Write a function letterReverse that accepts a single argument, a string. The function should maintain the order of words in the string but reverse the letters in each word. Don't worry about punctuation. This will be very similar to round 4 except you won't need to split them with a space.
#############################################

#example 1
def letter_reverse(string)
  p string.split.map{|word| word.reverse}.join(" ")
end
letter_reverse("Put Hans back on the line")

#example 2
def sentenceReverse (string)
  someArray = string.split(' ')
  sentenceResult = ''
  i = 0
  while i < someArray.length
    sentenceResult = sentenceResult + someArray[i].reverse + ' '
    i += 1
  end
  return sentenceResult
end

p sentenceReverse("Now I know what a TV dinner feels like")


########## Question 6
#Write a function longest that accepts a single argument, an array of strings. The method should return the longest word in the array. In case of a tie, the method should return either.
#############################################

#example 1
def longest(arr)
  longest = ""
  arr.each do |i|
    if i.length > longest.length
      longest = i
    elsif i.length== longest.length
      longest = longest +" "+ i
    end
  end
  p longest
end

longest(["oh", "good", "grief", "fives"])

#example 2

def longest ls
  p ls.max {|i, j| i.length <=> j.length }
end

#example 3
def longest (arr)
  return arr.max{|a,b| a.length <=> b.length}
end

#example 4
def longest(words)
  return words[words.map{|word| word.length}.sort[0]]
end
p longest(["oh", "good", "grief"])

#example 5
def longest(arrStr)
  output = ""
  arrStr.map{|word| output = word if (word.length == arrStr.map{|word| word.length}.max)}
  return output

end
```
