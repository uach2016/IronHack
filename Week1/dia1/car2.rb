
class Engine 
	def initialize sound
    @sound = sound
  end
	  def make_noise
    puts "bruuuuuuuuuuuuu"
  end
end

class Car < Engine
	def initialize sound
    @sound = sound
  end
	  def make_noise
    puts @sound
    engine = Engine.new
    engine.make_noise 

 end
end


car = Car.new "broooo"
car.make_noise