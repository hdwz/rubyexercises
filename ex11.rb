#ex11.rb
class Customer

  def initialize(customer)
      @customer = customer
  end

  def print_customer_details()
      puts "Customer details:"
      puts "Name: #{@customer['name']}"
      puts "Starsign: #{@customer['starsign']}"
      puts "Age: #{@customer['age']}"
      puts "=" * 15
  end
end

pedro = Customer.new({ "name" => "Pedro", "starsign" => "Taurus", "age" => 21 })
anne = Customer.new()

pedro.print_customer_details()
