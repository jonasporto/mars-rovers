# Mars Rovers
A Simple Mars Rovers navigation implemented in ruby

## Instalation
Clone repo ```https://github.com/jonasporto/mars-rovers``` and execute ```bundle install``` to install all dependencies.

## Testing
execute ```rake tests``` or just ```rake``` to run all test suite


## Usage
execute mars_rovers ruby script inside lib folder passing the input by pipe or redirect:

``` ruby lib/mars_rovers.rb < input.txt ```
``` cat input.txt | ruby lib/mars_rovers.rb ```

The output is printed in STDOUT so you can write it on file by redirect 

```cat input.txt | ruby lib/mars_rovers.rb > output.txt```

or just visualize the output at shell screen.
