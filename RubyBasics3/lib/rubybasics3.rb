# Ruby Basics Part 3

class BookInStock
    attr_accessor :isbn
    attr_accessor :price
    def initialize(isbn, price )
        self.isbn = isbn
        self.price = price
        if self.isbn.empty?
            raise ArgumentError.new("isbn cannot be empty")
        end
        if self.price <= 0
            raise ArgumentError.new("price must be greater than zero")
        end
    end
    
    def price_as_string
        "$%.2f" %@price
    end
end