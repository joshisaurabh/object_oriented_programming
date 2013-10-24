class Item
	attr_accessor :name
	attr_accessor :quantity
	attr_accessor :price
	

	def initialize(quantity,name,price)
		@quantity = quantity
		@name = name
		@price = price
	end

	def price_with_tax
		price * (1 + tax_rate)
	end

	def total
		price_with_tax * quantity
	end

	def sales_tax
		price_with_tax - price		
	end
end


class SalesTaxexempt < Item


end

class SalesTaxexemptImport < SalesTaxexempt

	def tax_rate
		0.05
	end

end

class SalesTaxexemptDom < SalesTaxexempt
	
	def tax_rate
		0
	end
end

	
class SalesTaxApplied < Item
	
	
end

class SalesTaxAppliedImport < SalesTaxApplied

	def tax_rate
	 	0.15
	end
	
end

class SalesTaxAppliedDom < SalesTaxApplied

	def tax_rate
	 	0.10
	 end
	
end

# creating new instances of SalesTaxexempt domestic items
salesTaxexemptDom1 = SalesTaxexemptDom.new(1,"book",12.49)
salesTaxexemptDom2 = SalesTaxexemptDom.new(1,"chocolate bar",0.85)
salesTaxexemptDom3 = SalesTaxexemptDom.new(1,"packet of headache pills",9.75)

# # creating new instances of SalesTaxexempt imported items
# no item found of this category

salesTaxexemptImport1 = SalesTaxexemptImport.new(1,"imported box of chocolates",10.00)
salesTaxexemptImport2 = SalesTaxexemptImport.new(1,"imported box of chocolates",11.25)
# creating new instances of SalesTaxApplied domestic items

salesTaxAppliedDom1 = SalesTaxAppliedDom.new(1,"music CD",14.99)
salesTaxAppliedDom2 = SalesTaxAppliedDom.new(1,"bottle of perfume",18.99)

# creating new instances of SalesTaxApplied imported items


salesTaxAppliedImport1 = SalesTaxAppliedImport.new(1,"imported bottle of perfume",27.99)
salesTaxAppliedImport2 = SalesTaxAppliedImport.new(1,"imported bottle of perfume",47.50)


# output

puts "Output 1:"
print salesTaxexemptDom1.quantity.to_s + " "
print salesTaxexemptDom1.name + " : "
puts salesTaxexemptDom1.price_with_tax.round(2)

print salesTaxAppliedDom1.quantity.to_s + " "
print salesTaxAppliedDom1.name + " : "
puts print salesTaxAppliedDom1.price_with_tax.round(2)

print salesTaxexemptDom2.quantity.to_s + " "
print salesTaxexemptDom2.name + " : "
puts salesTaxexemptDom2.price_with_tax.round(2)

print "Sales Taxes: " 
puts (salesTaxexemptDom1.sales_tax.round(2)+salesTaxAppliedDom1.sales_tax.round(2)+salesTaxexemptDom2.sales_tax.round(2)).round(2)
print "Total: " 
puts (salesTaxexemptDom1.total+salesTaxAppliedDom1.total+salesTaxexemptDom2.total).round(2)

puts
puts

puts "Output 2:"
print salesTaxexemptImport1.quantity.to_s + " "
print salesTaxexemptImport1.name + " : "
puts salesTaxexemptImport1.price_with_tax.round(2)

print salesTaxAppliedImport2.quantity.to_s + " "
print salesTaxAppliedImport2.name + " : "
puts salesTaxAppliedImport2.price_with_tax.round(2)

print "Sales Taxes: " 
puts (salesTaxexemptImport1.sales_tax+salesTaxAppliedImport2.sales_tax).round(2)
print "Total: " 
puts (salesTaxexemptImport1.total+salesTaxAppliedImport2.total).round(2)

puts
puts

puts "Output 3:"
print salesTaxAppliedImport1.quantity.to_s + " "
print salesTaxAppliedImport1.name + " : "
puts salesTaxAppliedImport1.price_with_tax.round(2)


print salesTaxAppliedDom2.quantity.to_s + " "
print salesTaxAppliedDom2.name + " : "
puts salesTaxAppliedDom2.price_with_tax.round(2)

print salesTaxexemptDom3.quantity.to_s + " "
print salesTaxexemptDom3.name + " : "
puts salesTaxexemptDom3.price_with_tax.round(2)

print salesTaxexemptImport2.quantity.to_s + " "
print salesTaxexemptImport2.name + " : "
puts salesTaxexemptImport2.price_with_tax.round(2)

print "Sales Taxes: " 
puts (salesTaxAppliedImport1.sales_tax+salesTaxAppliedDom2.sales_tax+salesTaxexemptDom3.sales_tax+salesTaxexemptImport2.sales_tax).round(2)
print "Total: " 
puts (salesTaxAppliedImport1.total+salesTaxAppliedDom2.total+salesTaxexemptDom3.total+salesTaxexemptImport2.total).round(2)

