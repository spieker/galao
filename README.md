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

### String::capitalize()

Capitalize first letter in string, remaining letters will stay untouched.

```coffeescript
coffee> "test".capitalize()
'Test'
coffee> "tesT".capitalize()
'TesT'
```

## Todo

* Write tests
* Add more functions

## Contributing

Feel free to send me pull requests on Github, contributions are always welcome!
