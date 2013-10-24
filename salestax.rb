class Item
	attr_accessor :name
	attr_accessor :quantity
	attr_accessor :price
	

	def initialize(quantity,name,price)
		@quantity = quantity
		@name = name
		@price = price
	end
end



class SalesTaxexempt < Item

	def tax_rate
		0.05
	end
end
	
class SalesTaxApplied < Item
	
	def tax_rate
		0.15
	end
end

salesTaxexempt = SalesTaxexempt.new(2,"book",12.00)
puts salesTaxexempt.price

