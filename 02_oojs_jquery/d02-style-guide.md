## Style Guide & Fonts

#### Rule of Thumb for Style Guides

Note that every style guide is unique. This is just a good starting point.

  * Headline Text: 300%
	* B-Head (sub) text: 150%
	* Nav Item: 100%
	* Body copy (text): 100% - starting point could be `body { font-size: 16px }`
  * Byline: 75%

#### Examples with Sass variables

* `1rem` = 100%
* `rem` is responsive and related to the `root` of the page.

```scss
// style guide variables

$headline-text: 3rem; // 300%
$body-text: 1rem;   // 100%
$nav-item: 1.25rem; // 125%
$sub-header: 1.50rem; // 150%
$byline: 0.75rem; // 75%

body {
  font-size: 16px;
}
```
