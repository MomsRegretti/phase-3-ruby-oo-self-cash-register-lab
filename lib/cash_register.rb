class CashRegister
    attr_accessor :total, :discount, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
    end

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
    end

    def apply_discount
        if self.discount != 0
            self.total *= (100-self.discount)/100
        else
            "There is no discount to apply."
        end
    end

    # def items(items,titles,multiples=false)
    #     if multiples == true
    #         @items
    #     else
        
    #     end
    # end

end

