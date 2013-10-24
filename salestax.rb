class Item
	attr_accessor :name
	attr_accessor :quantity
	attr_accessor :price
	

	def initialize(quantity,name,price)
		@quantity = quantity
		@name = name
		@price = price
	end

	# def tax_rate()
	# 	@tax_rate
	# end
end


class SalesTaxexempt < Item


end

class SalesTaxexemptImport < SalesTaxexempt

	def tax_rate
		0.05
	end

end

class SalesTaxexemptDom < SalesTaxexempt
	
end

	
class SalesTaxApplied < Item
	
	
end

class SalesTaxAppliedImport < SalesTaxApplied

	# def tax_rate
	# 	0.15
	# end
	
end

class SalesTaxAppliedDom < SalesTaxApplied

	# def tax_rate
	# 	0.10
	# end
	
end

# creating new instances of SalesTaxexempt domestic items
salesTaxexemptDom1 = SalesTaxexemptDom.new(1,"book",12.49)
puts salesTaxexemptDom1.price

salesTaxexemptDom2 = SalesTaxexemptDom.new(1,"headache pills",9.75)

# # creating new instances of SalesTaxexempt imported items
# no item found of this category

# creating new instances of SalesTaxApplied domestic items

salesTaxAppliedDom1 = SalesTaxAppliedDom.new(1,"chocolate bar",0.85)

# creating new instances of SalesTaxApplied imported items

salesTaxAppliedImport1 = SalesTaxAppliedImport.new(1,"imported box of chocolates",10.50)

