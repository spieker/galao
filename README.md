[![Version][version-img]][version-url]
![Node version](https://img.shields.io/node/v/galao.svg)
[![Build Status][travis-img]][travis-url]
![Downloads](https://img.shields.io/npm/dm/galao.svg)
![License](https://img.shields.io/npm/l/galao.svg)

<!-- Variables -->
[version-img]: https://img.shields.io/npm/v/galao.svg
[version-url]: https://www.npmjs.com/package/galao
[travis-img]: https://img.shields.io/travis/lawitschka/galao.svg
[travis-url]: https://travis-ci.org/lawitschka/galao

# Galao

This Node.js package provides a ActiveSupport-flavoured Javascript core object
extensions. A detailed list of features can be found below.

This project is work in progress and will grow in size continually when I feel
the need to add certain functions. See "Contributing" if you miss any
functionality, I'm always happy to merge your enhancements in!


## Usage

### Node.JS

Simple require _galao_ in your application and it will be accessible from
anywhere in your app:

```
require 'galao'
```

### Browser

There is a browser version in the _lib_ directory. Download the file from Github
or require locally from your _node_modules_ directory.

**Caveats:** The browser treats numbers differently than Node.JS. A number
directly followed by a dot is interpreted as a decimal number without a decimal
value and thus results in an exception. To avoid this exception and still use
the number functions, bracket the number:

```coffeescript
5.minutes()
=> Exception

(5).minutes()
=> All good!
```


## Methods

### Array::compact()

Returns a new array without any _null_ or _undefined_ elements.

```coffeescript
coffee> [1, 2, 3, null].compact()
[ 1, 2, 3 ]
coffee> [1, 2, 3, undefined].compact()
[ 1, 2, 3 ]
```

### Array::find()

Returns the first element of the array matching the callback condition.

```coffeescript
coffee> [{foo:1}, {foo:2}, {foo:3}].find (elem, index, array) -> elem.foo==2
{ foo: 2 }
coffee> [{foo:1}, {foo:2}, {foo:3}].find (elem, index, array) -> elem.foo==20
null
```

### Number::seconds()

Interpret given number as seconds and return value in milliseconds.

```coffeescript
coffee> 10.seconds()
10000
```

This function (and its related functions _minutes()_, _hours()_, etc.) becomes
very useful for specifying timeouts and intervals:

```coffeescript
setTimeout ->
  console.log 'Timeout ended'
, 5.seconds()
```

There is also a singular version of this method simply for syntactical sugar.
Instead of writing `1.minutes()`, which is syntactically incorrect, one can also
write `1.minute()`.

### Number::minutes()

Interpret given number as minutes and return value in milliseconds.

```coffeescript
coffee> 2.minutes()
120000
```

### Number::hours()

Interpret given number as hours and return value in milliseconds.

```coffeescript
coffee> 2.hours()
7200000
```

### Number::days()

Interpret given number as days and return value in milliseconds.

```coffeescript
coffee> 2.days()
172800000
```

### Number::even()

Checks whether the number is even or not.

```coffeescript
coffee> 5.even()
false
coffee> 6.even()
true
```

### Number::odd()

Checks whether the number is odd or not.

```coffeescript
coffee> 5.odd()
true
coffee> 6.odd()
false
```

### String::capitalize()

Capitalize first letter in string, remaining letters will stay untouched.

```coffeescript
coffee> "test".capitalize()
'Test'
coffee> "tesT".capitalize()
'TesT'
```

### String::startsWith(prefix)

Returns `true` if the string starts with the given prefix.

```coffeescript
coffee> "foo".startsWith 'f'
true
coffee> "foo".startsWith 'b'
false
```

### String::endsWith(prefix)

Returns `true` if the string ends with the given prefix.

```coffeescript
coffee> "foo".endsWith 'o'
true
coffee> "foo".endsWith 'f'
false
```

### String::repeat(n)

Repeats the string `n` times.

```coffeescript
coffee> "foo".repeat 2
'foofoo'
```

## Contributing

Feel free to send me pull requests on Github, contributions are always welcome!
