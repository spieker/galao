![Version](https://img.shields.io/npm/v/galao.svg)
![Node version](https://img.shields.io/node/v/galao.svg)
![Travis CI Build status](https://img.shields.io/travis/lawitschka/galao.svg)
![Downloads](https://img.shields.io/npm/dm/galao.svg)
![License](https://img.shields.io/npm/l/galao.svg)

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

### String::capitalize()

Capitalize first letter in string, remaining letters will stay untouched.

```coffeescript
coffee> "test".capitalize()
'Test'
coffee> "tesT".capitalize()
'TesT'
```

### String::dasherize()

Replaces upper characters with a dash and the lower version of the character.

```coffeescript
coffee> 'fooBar'.dasherize()
'foo-bar'
coffee> 'Foo_bar'.dasherize()
'-foo-bar'
coffee> '__foo--bar'.dasherize()
'-foo-bar'
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
