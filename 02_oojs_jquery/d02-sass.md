___

<strong>HTML & CSS</strong>
<h3>Sass with SCSS</h3>

---

##Installing Sass

To globally install Sass on your computer, run `gem install sass`.

##Watching a File

We can watch our Sass files so they are automatically converted to usuable CSS. To do so, we run the following command in the same folder as our SCSS files:

`sass -w your_file.scss` **or**  `sass --watch your_file.scss:compiled_css_file.css`
Where we say **sass** please listen for changes in **your_file.scss** and output the changes to **compiled_css_file.css*

##Variables

To create and re-use variables:

```scss
$my_variable: 0px;
$my_other_variable: black;

body {
  font-size: $my_variable;
  color: $my_other_variable;
}
```

##Importing other SCSS files

We can import other SCSS files for code organization!

**variables.scss**
```scss
$my_variable: 0px;
$my_other_variable: black;
```

**style.scss**
```scss
@import 'variables.scss';

body {
  font-size: $my_variable;
  color: $my_other_variable;
}

```

## Comments
```scss
// sass allows us to use JS style comments... these won't be compiled into the CSS file
```

## References
* Sass Guide: http://sass-lang.com/guide
* Sass Meister (validator): http://sassmeister.com/
