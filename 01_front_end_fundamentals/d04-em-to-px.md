## Equation for Converting Pixels to EMs

* `1em = 10px`
* OR
* `target / context = result` (Target = target font size, context = font size of containing element)

#### Example

Here is an `h1` using pixels:

```css
h1 {
  font-size: 30px;
  font-weight: bold;
}
```

We can convert that `px` value to `em`s:

`30px / 10px (standard font size) = 3em`

**Result:**

```css
h1 {
  font-size: 3em; /* 30x/10px */
  font-weight: bold;
}
```
