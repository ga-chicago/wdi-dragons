## What is JSON?

- Stands for *Javascript Object Notation*
- Similar in use to CSV/XML
- Incredibly Popular and gaining popularity
- Parsing JSON is fast thanks to tools like the V8 Engine

## The `JSON` Javascript Object

- Contains **two helpful methods**:
- `stringify(javascriptObject)`: converts a Javascript Object to a JSON string
- `parse(jsonString)`: converts a JSON string into a Javascript Object
- Fallback: If you're supporting older browsers, you'll need a polyfill such as `json2.js`

#### JSON Examples

```json
{
    "someKey": "someValue",
    "maybe": "sure?",
    "numbers?": 3.14,
    "booleanToo?": false,
    "someArray": [
    	"one", "two", "three"
    ],
    "objected": {
    	"myKey": "myValue"
    }
}
```

#### JSON Warnings!

* no comments allowed
* last key/value pair must not have a ,
* keys must be in strings
* strings must utilize " (double quotes)


#### More JSON Examples

```json
{
	"name": "magda",
	"breed": "tabby",
	"age": 12,
	"colour": "grey and white",
	"has_microchip": true
}
```

```json
{
    "favouriteNumber": 42,
    "firstPrime": 2,
    "arrayOfPrimes": [
        2,
        5,
        7,
        17,
        11,
        13
    ]
}
```

#### XML Example

```XML
<tagname attribute='value'>
	<resource attribute='value' />
	<another_resource new_attribute='valuetwo' />
</tagname>
```
