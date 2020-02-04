class CashRegister 
	def initialize(discount=0)
		@total = 0
		@discount = discount
		@items = []
		@amounts = []
	end

	def total=(total)
		@total = total
	end

	def total
		@total
	end

	def discount
		@discount
	end

	def add_item(item,price,quantity=1)
		quantity.times do
			@items << item
			@amounts << price
		end
		@total += price * quantity
	end

	def apply_discount
		if @discount > 0
			@total = @total * (100 - @discount) / 100
			return "After the discount, the total comes to $#{@total}."
		else
			return "There is no discount to apply."
		end
	end

	def items
		@items
	end

	def amounts
		@amounts
	end

	def void_last_transaction
		@items.pop
		@total -= @amounts.pop
	 
	end

end