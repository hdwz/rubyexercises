class Customer
  def initialize(customer)
    @customer = customer
  end

  def print_customer_info #print customer info to screen
    puts "Customer details"
    puts "Name: #{@customer ['name']}"
    puts "Email: #{@customer ['email']}"
  end

end

def draw_lines
  puts "=" * 10
end

def draw_menu
  puts "Welcome to the Bank"
  draw_lines
  puts "What would you like to today?"
  draw_lines
  puts "1. Add customer"
  puts "2. See list of customers"
  puts "3. Exit"
end

while true #loop only goes whilst condition is true (will draw menu), unless if the loop is broken, in this case the break is in option 3.
  draw_menu
  answer = gets.chomp

if answer == '1' #add customer
  puts "What is the customer's name?"
  customer_name = gets.chomp
  puts "What is the customer's email?"
  customer_email = gets.chomp

  new_customer = Customer.new({"name" => customer_name, "email" => customer_email})
  new_customer.print_customer_info #make a 'def' for it above under Class

  elsif answer == '2' #see list of customers

  elsif answer == '3' #Exit
    break #breaks the loop
  end


end
