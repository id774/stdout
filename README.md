Stdout
======

**Change stdout to array object.**


What is This?
-------------

Change STDOUT output to array object.


Tutorial
--------

``` html
require 'stdout'

demo = Stdout::Output.capture { puts "hoge" }

p demo #=> ["hoge\n"]

demo2 = Stdout::Output.capture {
  puts "Hello, "
  puts "World!"
}

p demo2 # => ["Hello, \n", "World!\n"]
```

So, testing your print method with rspec.

``` html
Stdout::Output.capture{ your.some_method }.should eq expected

```

See spec files.


Development
-----------

**Repository**

+ https://github.com/id774/stdout


Environment
-----------

After ruby 1.9.


ChangeLog
---------

See doc/ChangeLog file.


Developers
----------

See doc/AUTHORS.


Author
------

**774**

+ http://id774.net
+ http://github.com/id774


Copyright and license
---------------------

See the file doc/LICENSE.

