class Discount
    @@discounts = [
        {
            min:0.0,
            max:1000.0,
            reduce: 0.0
        },
        {
            min:1000.0,
            max:5000.0,
            reduce: 0.03
        },
        {
            min:5000.0,
            max:7000.0,
            reduce: 0.05
        },
        {
            min:7000.0,
            max:10000.0,
            reduce: 0.07
        },
        {
            min:10000.0,
            max:50000.0,
            reduce: 0.10
        },
        {
            min:50000.0,
            max:Float::INFINITY,
            reduce: 0.15
        }
    ];

    def self.get_discount(total)
        reduce = @@discounts.find { |i| 
            total >= i[:min] and
            total < i[:max]}[:reduce]
        return total * (1-reduce);
    end
end