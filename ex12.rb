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

  def update_customer_name(new_name)
    @customer['name'] = new_name
  end

end

pedro = Customer.new({ "name" => "Pedro", "starsign" => "Taurus", "age" => 21 })
jake = Customer.new({ "name" => "Jake", "starsign" => "Pisces", "age" => 23 })

pedro.print_customer_details()
jake.print_customer_details()

puts

customers = [pedro, jake]
customers.each do |customer|
  customer.print_customer_details()
end

puts "\n\n"
puts "Would you like to change a customer name? Y/N"
print ">"
answer = gets.chomp

if answer == "Y"
  puts "Which customer would you like to update? Pedro (1) or Jake (2)?"
  print "> "
  which_customer = gets.chomp.to_i
  puts "What is the new name?"
  print "> "
  new_name = gets.chomp
  customers[which_customer - 1].update_customer_name(new_name)
  puts "Customer updated!"
  puts customers[which_customer - 1].print_customer_details()
end
