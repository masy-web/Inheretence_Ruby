class Grandfather
  def initialize
    puts 'In Grandfather class'
  end
  
  def grandfather_method
    puts 'Grandfather method call'
  end
end

class Father < Grandfather
  def initialize
    puts 'In Father class'
  end
  def father_method
    puts 'Father method call'
end

class Son < Father
  def initialize
    puts 'In Son class'
  end
end

# What's the output of each line?
son = Son.new
son.grandfather_method
father = Father.new
# Class Dog
class Dog  
  def initialize(breed)  
    @breed = breed  
  end  
end  
  
class Lab < Dog  
  def initialize(breed, name)  
    super(breed)  
    @name = name  
  end  
  
  def to_s  
    "(#@breed, #@name)"  
  end  
end  
  
puts Lab.new("Labrador", "Benzy").to_s

#Class Bird  
class Bird 
  def preen
    puts "I am cleaning my feathers."
  end

  def fly
    puts "I am flying."
  end
end
  
class Penguin < Bird
  def fly
    puts "Sorry. I'd rather swim."
  end
end
  
p = Penguin.new
p.preen
p.fly