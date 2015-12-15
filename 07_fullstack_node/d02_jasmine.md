## 7.2 Introduction to Jasmine

* [Official Jasmine.js Documentation](http://jasmine.github.io/2.0/introduction.html)
* [Jasmine Boilerplate from Class](https://github.com/code-for-coffee/jasmine_intro)


#### Goals

* Understand why we should test our code with specs
* Describe what assertions and expectations are
* Implement Jasmine with a Node application
* Create a suite of tests and individual tests inside of a suite

#### Getting Started with Jasmine

1. Create a new project folder.
2. Change directory to that folder.
3. `npm init` a new application. Enter, enter, enter...
4. Let's take a look at our folder structure: `tree`. Now, add an `app` and a `spec` folder. The **app** folder will contain your application and your **spec** folder will contain your tests.
5. We need to install Jasmine. To do so, `npm install jasmine-node --save`
6. Now, we need to find where our executable for tests lives... `node_modules/.bin/jasmine-node spec`
7. Let's run that! `node_modules/.bin/jasmine-node spec`
8. In your package.json, under the `"scripts"` for **test**, replace the value with `node_modules/.bin/jasmine-node spec`
9. Run `npm test`
10. Verify your tests run.
11. Wait. what tests?! Let's add some! We'll add them to the **spec** folder.
12. Inside of the **spec** folder, create a new Javascript file. Such as `testSpec.js` or `somethingSpec.js`. For tests to successfully be ran, you must end the file with *Spec*.
13. Now, run `npm test`!

#### Describe Suites of Tests

* We need to *describe* a suite, or set, of tests
* A suite includes multiple things to test
* Suites can include other suites as children
* Inside of each suite of tests, we include individual tests

```javascript
describe('a set of problems to solve', function() {
  // tests go here...
});
```

#### Describe a Test

* Each test is *described*
* *it* has a variety of *expectations*

```javascript
describe('a set of problems to solve', function() {

  describe('a failing test', function() {
    it('fails', function() {
      //expect(false).toBe(true);
    });
  });

  describe('an individual problem to solve', function() {

    it('a basic test', function() {
      var expected = 'solution';
      //var assert = 'womp womp';
      var assert = expected;

      expect(assert).toBe(expected);
    });

  });

});
```

#### Jasmine Matchers

```javascript
expect(fn).toThrow(e);
expect(instance).toBe(instance);
expect(mixed).toBeDefined();
expect(mixed).toBeFalsy();
expect(number).toBeGreaterThan(number);
expect(number).toBeLessThan(number);
expect(mixed).toBeNull();
expect(mixed).toBeTruthy();
expect(mixed).toBeUndefined();
expect(array).toContain(member);
expect(string).toContain(substring);
expect(mixed).toEqual(mixed);
expect(mixed).toMatch(pattern);
```
