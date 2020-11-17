require_relative "./models/invoice.model.rb"
unit = ARGV[0].to_i;
cost =  ARGV[1].to_f;
invoice = Invoice.new();
tmp = invoice.get_total(unit, cost);
puts "total is #{tmp}"