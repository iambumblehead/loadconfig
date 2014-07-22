loadconfig
==========
**(c)[Bumblehead][0], 2014** [MIT-license](#license)

### OVERVIEW:

`loadconfig` is a sequential erlang module that loads a config file in an erlang environment. Config files are usually named 'sys.config' or 'app.config' and are described in erlang's documentation [here][1].

```erlang
loadconfig:load("../app.config"). %% {ok, done}.
```

It is common to load this file while starting an erlang environment from a shell.
```bash
$ erl -pa ebin deps/*/ebin -config app # loads `app.config`
```

`loadconfig` may be used to achieve the same result for tasks started outside an erlang shell. 'For example, with eunit modules -where eunit is begun with rebar, which loads app.config and its properties to be used by the test subject.


[0]: http://www.bumblehead.com "bumblehead"
[1]: http://www.erlang.org/doc/man/config.html "erlang config"

---------------------------------------------------------
#### <a id="test"></a>Test:

to run tests, use `rebar eunit` from a shell.
```bash
$ rebar eunit
```


---------------------------------------------------------
#### <a id="license">License:

![scrounge](http://github.com/iambumblehead/scroungejs/raw/master/img/hand.png) 

(The MIT License)

Copyright (c) 2014 [Bumblehead][0] <chris@bumblehead.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
