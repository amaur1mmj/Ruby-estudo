
class Trip
    def initialize(duration, price)
      @duration = duration
      @price = price
    end
  end
  
  
  class Cruise < Trip
    def initialize(duration, price)
      super
    end
  end
  
  spain_backpacking = Trip.new(14, 800.00)
  carnival = Cruise.new(7, 2400.00)

  p carnival, spain_backpacking