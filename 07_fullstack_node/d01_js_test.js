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
