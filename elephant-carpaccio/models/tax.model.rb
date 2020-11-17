class Tax
    @@rates = {
        "UT":{
            rate:0.0685
        },
        "NV":{
            rate:0.0800
        },
        "TX":{
            rate:0.0625
        },
        "AL":{
            rate:0.0400
        },
        "CA":{
            rate:0.0825
        }
    }
    def self.get_taxes(total, state = "NV")
        return total * (1 + @@rates[state.to_sym][:rate]);
    end

    def self.exists_state?(state)
        if(@@rates[state.to_sym] == nil)
            raise "El Estado ingresado no existe, debes seleccionar uno de estos estados: UT, NV, TX, AL, CA";
        end
    end
end