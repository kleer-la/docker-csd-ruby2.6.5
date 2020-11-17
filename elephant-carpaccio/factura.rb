require_relative "./models/invoice.model.rb"
require_relative "./models/discount.model.rb"
require_relative "./models/tax.model.rb"
unit = ARGV[0].to_i;
cost =  ARGV[1].to_f;
state = ARGV[2].to_s;
total = Invoice.get_total(unit, cost)
puts "total before discounts #{total}";
total = Discount.get_discount(total)
puts "total after discounts #{total}";
total = Tax.get_taxes(total)
puts "total after taxs #{total}"