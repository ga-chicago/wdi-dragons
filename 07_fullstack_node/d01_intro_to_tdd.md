## Introduction to Test Driven Development

#### Learning Objectives

 * Understand why we should test our code with specs
 * Describe what assertions and expectations are
 * Manually write a test for a DOM element

#### We ASSERT something that should match an EXPECTED value

 * Asserts are what our actual value we get.
 * They are what fails a test.
 * We *EXPECT* that an *ASSERT* matches our *EXPECTED* value
 * Let's visualize this... together.

#### Testing Code

```javascript
/**
 * Verifies that an image has a src attribute.
 * @test
 */
function doesImgHaveSrcTest(imgObj) {
  var assert = imgObj;
  var expected = true;
  if (assert.hasOwnProperty('src') == expected) {
    return true;
  }
  return false;
}
```

## Refactoring Tests: Before

*We want to break our tests down to where we compare our assert and our expectation.* Here are a few tests.

#### Testing Pi

```javascript
/**
 * Verifies that pi = '3.14'
 * @test
 */
function verifyPiTest(pi) {
  var assert = pi;
  var expected = '3.14';
  if (assert.toString().substring(0,4) == expected) {
    return true;
  }
  return false;
}
```

## Refactoring Tests: After

*You can see our tests and how they now just compare our assert and our expectation.*

```javascript
/**
 * defines a test
 * @test
 */
function doesBodyExistTest(dom) {
  var assert = dom.getElementsByTagName('body');
  var expect = 1;

  if (assert.length == expect) {
    return true;
  }
  return false;
}


/**
 * Verifies that an image has a src attribute.
 * @test
 */
function doesImgHaveSrcTest(imgObj) {
  var assert = imgObj.hasOwnProperty('src');
  var expected = true;
  if (assert == expected) {
    return true;
  }
  return false;
}

/**
 * Verifies that pi = '3.14'
 * @test
 */
function verifyPiTest(pi) {
  var assert = pi.toString().substring(0,4);
  var expected = '3.14';
  if (assert == expected) {
    return true;
  }
  return false;
}
```

## Your Turn

Write a test to verify that a `<div>` has content (such as ... *innerHTML*...).

```javascript
/**
 * Verify that a div has content
 * @test
 */
function doesDivHaveContentTest(divObj) {

  var assert;
  var expect;

  if (assert == expect) {
    return true;
  }
  return false;

}
```
