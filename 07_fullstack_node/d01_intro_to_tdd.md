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
