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

So, testing your print method with minitest.

``` html
require 'stdout'
require 'minitest/autorun'

class YourClass
  def self.some_method
    puts "aaa"
    puts "bbb"
    puts "ccc"
  end
end

class TestYourClass < MiniTest::Unit::TestCase
  def test_some_method
    expected = [
      "aaa\n",
      "bbb\n",
      "ccc\n"
    ]
    result = Stdout::Output.capture{ YourClass.some_method }
    assert_equal(expected, result)
  end
end
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

