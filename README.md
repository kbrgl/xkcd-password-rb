# xkcd password generator
![](http://imgs.xkcd.com/comics/password_strength.png)
### Languages in which I've implemented this
* [Python](https://github.com/kbrgl/xkcd-password) (compatible with both 2 and 3)
* Ruby

### What word list are you using?
I'm using a word list I found at [a GitHub repo called 'google-10000-english'](https://github.com/first20hours/google-10000-english). However, you can use pretty much any word list for this.

### How the heck do I use this thing?
If you just want a password then just clone the repo and run the Ruby script.

#### Using the code
Initialize the XkcdPasswordGenerator object with the word list you want to use. Call the generate() method. You can retrieve individual words with the random_word() method.
* In case you are using an external word list file, there's a parse() function that you can use.

Here's an example:
```ruby
generator = XkcdPasswordGenerator.new(parse('dictionary.csv', delimiter: ','))
generator.generate #=> 'correct horse battery staple'
generator.generate(words: 4, separator: nil) #=> ['correct', 'horse', 'battery', 'staple']
generator.random_word #=> 'horse'
```
