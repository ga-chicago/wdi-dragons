## 5.2 Bonus Homework: Dragon Latin

We're going to play around with Ruby! Let's imagine that we want to build a method that would check paragraphs of texts for words. Let's define a method that accepts in some blob of text (as a `String`) called `dragon_latin`.

Translating English to Dragon language is pretty simple. A general rule of thumb for translating is below.
1. **For Each** word in a paragraph
2. **If** the words has more than 1 character
  - Step 1: The last letter of each word becomes the first character
  - Step 2: "ur" is appended to the end of the word
3. **Else**
  - The word remains unchanged

#### Example:
- English: "I think we love the world"
- Dragon Latin: "I kthinur ewur elovur ethur dworlur"

#### Starter Code

```ruby
def dragon_latin(text)
  output = text.split(' ').map do |word|
    ## code to go here
    ## remember that strings are just arrays of characters
    ## walk through the steps for translating in the code here
    ## the output will be returned below
  end

  return output.join(' ')
end
```
