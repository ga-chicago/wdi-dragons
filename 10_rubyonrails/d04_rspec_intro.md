##Test Driven Development (TDD)

### TDD Steps
* This is usually done with pair programming
1. Write a test
2. Run the test - test will fail
3. Write bare minimum code to pass the test
4. Run the test - pass test
5. Refactor code
6. Run the test - pass test
7. Go to step 1

##Rspec
Rspec is a Domain Specific Language (DSL). This means that it is written specifically for use with Ruby, but is not Ruby.
Other examples would be cucumber for python, and jasmine for javascript.

###General test structure:
A `describe` at the top of the test is for the class, then another `describe` is for the method being tested. The `it` line is the test:

```ruby
describe Class do
  describe ".new" do
    it "creates a Class object" do
        #Test in here
    end
  end
end
```
