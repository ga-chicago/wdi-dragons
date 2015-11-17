## 2.1 Morning Exercise

We recapped the weekend practice homework.

#### Source Code

Below is one set of solutions for the weekend practice.

```javascript
// declare function named "lengths"
// that accepts a arguments named "arrayOfStrings"
function lengths(arrayOfStrings) {

  // we can log out our "arrayOfStrings"
  console.log(arrayOfStrings);

  var strLengthArray = [];

  for (var inc in arrayOfStrings) {
  	var tempLength = arrayOfStrings[inc].length;
  	strLengthArray.push(tempLength);
  }

  // now, we want to "return" something... but what?
  return strLengthArray;

}
lengths(['kepler 22b', 'misa-et 980', 'pluto']);



// 2.
function transmogrifier(num1, num2, num3) {
	return Math.pow((num1 * num2), num3);
}
transmogrifier(42, 100, 9000);
transmogrifier(2, 4, 10);

// 3. toonify

function toonify(accent, sentence) {

	if (accent == 'daffy') {
		return sentence.replace(/s/g, 'th');
	} else if (accent == 'elmer') {
		return sentence.replace(/r/g, 'www');
	} else {
		return sentence;
	}

}
toonify('elmer', 'ehh what\'s up doc? I smell rascally rabbits!');

// 4. word reverse

var topic = 'today we will cover CSS';
function wordReverse(words) {

	var tempArray = words.split(' ');
	console.log(tempArray);
	var reversed =	tempArray.reverse();
	console.log(reversed)
	return reversed.join(" ");

}
wordReverse(topic);


// 5. letterReverse

function letterReverse(someStuff) {

	var tempArray = someStuff.split(' ');
	var finalSentence = '';

	for (var inc in tempArray) {

		var word = tempArray[inc];
		console.log(word);
		var splitWord = word.split('');
		console.log(splitWord);
		splitWord.reverse();
		word = splitWord.join('');
		console.log(word);
		finalSentence = finalSentence + ' ' + word;
		console.log(finalSentence);

	}

	return finalSentence;

}

// 6. longest
function longest (stringArray) {
    var compare = 0;
    for (var inc = 0;  inc < stringArray.length; inc ++) {
        if (stringArray[inc].length > compare) {
            compare = stringArray[inc].length;
            var longestWord = stringArray[inc];
        }
    }
    return longestWord;
}

// 7. rep master
function repMaster (input, aFunction) {
    var storedReturnValue;
   storedReturnValue = aFunction(input);
    if (typeof storedReturnValue === "string") {
        console.log(storedReturnValue + "proves I am the rep master!")
    } else {
        console.log("Give my a string input!")
    }

}
```
