## 4.1 Ruby Rups!

### Round 1: Prime Time
- Write a method called `prime?` that takes a single parameter called `number` and returns `true` if the parameter is a prime number, or `false` otherwise.
- *Use* the `Math.sqrt` ...

---

### Round 2: Fardingworth Falls

- Let's generate some random town names for a Tycoon-style video-game. We can do this by combining the following generic name fragments:
* **Starts:** Bed, Brunn, Dun, Far, Glen, Tarn
* **Middles:** ding, fing, ly, ston
* **Ends:** borough, burg, ditch, hall, pool, ville, way, worth

### Step 1

- Write a method called `town_names` that randomly generates a number of town names by combining one Start, one Middle, and one End. Calling `town_names(5)` should give an array of 5 town names. If just `town_names` is called, generate 3 names.

### Step 2

- Modify the method so that calling `town_names(3, 'near_water')` will randomly add either "-on-sea" or " Falls" to each of the names. Optionally, think of another value that the second argument could have, and add appropriate random suffixes or prefixes when it is provided.

### Step 3

- Modify the method so that calling `town_names(3, 'short_name')` will always generate names without a Middle.
