class ShoppingCart
  
    def initialize
    @items = {}
    end
 
  def add_items item, price
    if @items.include?(item)
        @items[item] += price
    else
        @items[item] = price
    end
  end
  
  def show_items
      @items.each do|item, price| 
      puts "#{item} are #{price}$"
      end
    end
 
    def checkout
      total_price = 0
    
      @items.each do |item, price|
        total_price += price
      end
      
      puts "El precio es #{total_price}$" 
      end
    
end
class Item

  def initialize(name, price)
    @name = name
    @price = price
  end
end

#Buy 4 grapes you get one banana for free if you want!
class Apples < Item
 def price
    price = @price
  	n_apple = 0
	if  n_apple % 2 == 0
      return @price * 0,5
    else
      return @price
    end
  end
end

class Oranges < Item
 def price
    price = @price
	n_oranges = 0
	if n_oranges % 3 == 0
      return @price * 0.5
    else
      return @price
    end
  end
end


grapes = Item.new("grape", 150)	
apple = Apples.new("apple", 10)
orage = Oranges.new("orange", 5)
watermelon = Item.new("watermelon", 50)																	
																	


yo = ShoppingCart.new
yo.add_items :apples, 10
yo.add_items :apples, 10
yo.add_items :oranges, 5
yo.add_items :grapes, 15
yo.add_items :banana, 20
yo.add_items :watermelon, 50
yo.show_items
yo.checkout