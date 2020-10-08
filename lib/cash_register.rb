require 'pry'
class CashRegister
    attr_accessor :discount, :total, :items, :last_transaction
 
    def initialize(discount = 0) 
       @total = 0
       @discount = discount
       @items = []

       
    end

   def add_item(title,price,quantity = 1)
        if quantity > 1
            i = 0
            while i < quantity
            @items << title
            i += 1
            end
            
        else
            @items << title
        end
       @last_transaction = price * quantity
       @total += price * quantity
   end

   def apply_discount
      if @discount > 0
        @total = @total -(@total * @discount/100)
        "After the discount, the total comes to $#{total}."
      else
        return "There is no discount to apply."
      end
   end

   def void_last_transaction
       @total -= @last_transaction.to_f
   end

end