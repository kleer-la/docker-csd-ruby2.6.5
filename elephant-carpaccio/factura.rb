require_relative "./models/invoice.model.rb"
require_relative "./models/discount.model.rb"
unit = ARGV[0].to_i;
cost =  ARGV[1].to_f;
invoice = Invoice.new();
total = invoice.get_total(unit, cost);
total = Discount.get_discount(total);
puts "total with discount #{total}"