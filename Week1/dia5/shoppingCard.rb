      
class ShoppingCart
  attr_accessor :name,:price  
  def initialize
    @items = {}
  end
  def add_items item
      
      if @items[item.name]
      @items[item.name] += item.price
      
     else 
      @items[item.name] = item.price
      end
  end

  def show_items
      
      @items.each {|item, price| puts "#{item}, #{price}"}
   
  end
   
  def checkout
      total_price = 0
    
      @items.each_value do |price|
        total_price += price
        end
        puts "your total price is #{total_price}$"
        
   end
end
 
class Item
attr_accessor :name,:price
  def initialize name, price
    @name = name
    @price = price
  end
end

arroz = Item.new "arroz", 5
papas = Item.new "papas", 10
yo = ShoppingCart.new
yo.add_items(arroz)
yo.add_items(arroz)
yo.add_items(papas)
yo.add_items(papas)
yo.show_items
yo.checkout
