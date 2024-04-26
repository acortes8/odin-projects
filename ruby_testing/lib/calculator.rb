class Calculator
    def add(*args)
        args.sum
    end

    def multiply(*args)
        product = 1
        args.each do |number|
            product *= number
        end
        product 
    end
end