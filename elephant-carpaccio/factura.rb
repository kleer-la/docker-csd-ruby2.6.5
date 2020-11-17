require_relative "./models/invoice.model.rb"
require_relative "./models/discount.model.rb"
require_relative "./models/tax.model.rb"
if (ARGV.length != 3)
    raise "Debe tener 3 parametros de entrada: Unidades (entera), Costo (Flotante) y estado (Cadena)"
end
unit = 0;
begin
    unit = Integer(ARGV[0]);
rescue
    raise "El primer parametro (unidades) debe ser entero";
end
cost =  0.0
begin
    cost = Float(ARGV[1]);
rescue
    raise "El segundo parametro (costo) debe ser flotante";
end
state = ARGV[2].to_s.upcase;
Tax.exists_state?(state);
total = Invoice.get_total(unit, cost)
puts "total before discounts #{total}";
total = Discount.get_discount(total)
puts "total after discounts #{total}";
total = Tax.get_taxes(total)
puts "total after taxs #{total}"