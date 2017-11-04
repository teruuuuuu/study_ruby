class HelloRuby
  def self.greeting
    'Hello, world!'
  end
end


class Hi
    def self.hi(name = 'world')
        "hi #{name.capitalize}!"
    end
end

class Greeter
  def initialize(name = "World")
    @name = name
  end
  def say_hi
    "Hi #{@name}!"
  end
  def say_bye
    "Bye #{@name}, come back soon."
  end
end

def fizzBuss(i)
     temp = [(i % 3), (i % 5)]
     if(temp[0] == 0 && temp[1] == 0) then
        "FizzBuss"
     elsif(temp[0] == 0) then
        "Fizz"
    elsif(temp[1] == 0) then
        "Buzz"
    else
        i.to_s
    end
end


if $0 == __FILE__ then
    puts(HelloRuby.greeting)
    puts(Math.sqrt(9))
    puts(3 ** 2)
    puts(Hi.hi)
    puts(Hi.hi("chris"))
    greeter = Greeter.new("Pat")
    puts greeter.say_hi
    puts greeter.say_bye
    (1..20).each do |i|
        puts fizzBuss i
    end
end

    
    