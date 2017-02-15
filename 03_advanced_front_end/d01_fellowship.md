## Fellowship (Journey to MorDOMr) Solution

Below is one of *many* solutions to this weekend's homework.

```javascript
$(function() {

  console.log("Linked.");

  // Dramatis Personae
  var hobbits = [
    'Frodo Baggins',
    'Samwise \'Sam\' Gamgee',
    'Meriadoc \'Merry\' Brandybuck',
    'Peregrin \'Pippin\' Took'
  ];

  var buddies = [
    'Gandalf the Grey',
    'Legolas',
    'Gimli',
    'Strider',
    'Boromir'
  ];

  var lands = ['The Shire', 'Rivendell', 'Mordor'];

  // we don't need a var to hold body with jQuery.  
  // var body = document.querySelector('body');

  // Chapter 1
  function makeMiddleEarth() {
      // create a section tag with an id of middle-earth
      var middleEarth = $('<section>');
      for(var i = 0; i < lands.length; i++) {
        // add each land as an article tag
        var land = $('<article>');
        // inside each article tag include an h1 with the name of the land
        var landName = $('<h1>');
        landName.text(lands[i]);
        land.append(landName);
        middleEarth.append(land);
      }
      // append middle-earth to your document body
      $('body').append(middleEarth);
  }

  makeMiddleEarth();

  var theShire = $('article').eq(0);
  var rivendell = $('article').eq(1);
  var mordor = $('article').eq(2);;

  // Chapter 2
  function makeHobbits() {
    // display an unordered list of hobbits in the shire (which is the first article tag on the page)
    var hobbitList = $('<ul>');
    for(var i = 0; i < hobbits.length; i++) {
    // give each hobbit a class of hobbit
      var hobbit = $('<li>');
      hobbit.addClass('hobbit');
      hobbit.text(hobbits[i]);
      hobbitList.append(hobbit);
    }
    theShire.append(hobbitList);
  }

  makeHobbits();

  var frodo = $('li').eq(0);

  // Chapter 3
  function keepItSecretKeepItSafe() {
    // create a div with an id of 'the-ring'
    var theRing = $('<div>');
    theRing.prop('id', 'the-ring');
    // give the div a class of 'magic-imbued-jewelry'
    theRing.addClass('magic-imbued-jewelry');
    // add an event listener so that when a user clicks on the ring, the nazgulScreech function (provided) is invoked
    // theRing.addEventListener('click', nazgulScreech);
    // add the ring as a child of Frodo
    frodo.append(theRing);
  }

  keepItSecretKeepItSafe();


  // Chapter 4
  function makeBuddies() {
    // create an aside tag
    var aside = $('<aside>');
    var buddyList = $('<ul>');
    for(var i = 0; i < buddies.length; i++) {
      // attach an unordered list of the 'buddies' in the aside
      var buddy = $('<li>');
      buddy.text(buddies[i]);
      buddyList.append(buddy);
    }
    // insert your aside as a child element of rivendell
    aside.append(buddyList);
    rivendell.append(aside);
  }
  makeBuddies();

  var strider = rivendell.find('li').eq(3);


  // Chapter 5
  function beautifulStranger() {
    // change the 'Strider' text to 'Aragorn'
    strider.text('Aragorn');
  }

  beautifulStranger();

  var hobbits = theShire.find('ul').eq(0);

  // Chapter 6
  function leaveTheShire() {
    // assemble the hobbits and move them to Rivendell
    rivendell.append(hobbits);
  }
  leaveTheShire();

  var fellowshipMembers = rivendell.find('li');


  // Chapter 7
  function forgeTheFellowShip() {
    // create a new div called 'the-fellowship' within rivendell
    var theFellowship = $('<div>');
    theFellowship.prop('id', 'the-fellowship');
    for(var i = 0; i < fellowshipMembers.length; i++) {
      theFellowship.append(fellowshipMembers.eq(i));
      alert(fellowshipMembers.eq(i).text() + ' has joined the fellowship!');
    }
    // add each hobbit and buddy one at a time to 'the-fellowship'
    // after each character is added make an alert that they have joined your party
    rivendell.append(theFellowship);
  }

  forgeTheFellowShip();

  var gandalf = fellowshipMembers.eq(0);

  // Chapter 8
  function theBalrog() {
    // change the 'Gandalf' textNode to 'Gandalf the White'
    gandalf.text('Gandalf the White');
    // apply style to the element
    gandalf.css('border', '3px solid slategrey');
    // make the background 'white', add a grey border
    gandalf.css('backgroundColor', 'white');
  }

  theBalrog();

  var boromir = fellowshipMembers.eq(4);

  // Chapter 9
  function hornOfGondor() {
    alert('the horn of gondor has blown');
    // pop up an alert that the horn of gondor has been blown
    // put a linethrough on boromir's name
    boromir.css('text-decoration', 'line-through');
    alert('Boromir\'s been killed by the Uruk-hai!');
    // Remove Boromir from the Fellowship
    rivendell.append(boromir);
  }

  hornOfGondor();

  var sam = fellowshipMembers.eq(6);

  // Chapter 10
  function itsDangerousToGoAlone() {
    // take Frodo and Sam out of the fellowship and move them to Mordor
    mordor.append(frodo);
    mordor.append(sam);
    // add a div with an id of 'mount-doom' to Mordor
    var mountDoom = $('<div>');
    mountDoom.prop('id', 'mount-doom');
    mordor.append(mountDoom);
  }

  itsDangerousToGoAlone();

  var gollum, theRing;

  // Chapter 11
  function weWantsIt() {
    // Create a div with an id of 'gollum' and add it to Mordor
    gollum = $('<div>');
    gollum.prop('id', 'gollum');
    theRing = frodo.find('#the-ring').eq(0);
    gollum.append(theRing);
    // Remove the ring from Frodo and give it to Gollum
    // Move Gollum into Mount Doom
    var mountDoom = mordor.find('#mount-doom').eq(0);
    mountDoom.append(gollum);
  }

  weWantsIt();

  // Chapter 12
  function thereAndBackAgain() {
    gollum.remove();
    // remove Gollum and the Ring from the document
    var hobbitUL = $('<ul>');
    var hobbits = $('.hobbit');
    for(var i = 0; i < hobbits.length; i++){
      hobbitUL.append(hobbits.eq(i));
    }
    theShire.append(hobbitUL);
    // Move all the hobbits back to the shire

  }

  thereAndBackAgain();

  function golemGotCash() {
    var bling = $('<div>');
    bling.prop('id', 'lord-of-the-bling');
    $('body').append(bling);
  }

  golemGotCash();

});
```
