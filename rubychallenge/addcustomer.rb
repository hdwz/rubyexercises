class Customer
  def initialize(customer)
    @customer = customer
  end

  def print_customer_info #print customer info to screen
    puts "Customer details"
    puts "Customer ID: #{@customer['ID']}"
    puts "Name: #{@customer['name']}"
    puts "Address: #{@customer['address']}"
    puts "Phone number: #{@customer['phone number']}"
    puts "Email: #{@customer['email']}"
    puts "Bank balance: #{@customer['bank balance']}"
  end

  def save_to_file
    filename = 'customer.csv'
    customer_file = open(filename, 'a')
    customer_file.write(@customer ['customer id'] + ',' + @customer['name'] + ',' + @customer['address'] + ',' + @customer['phone number'] + ',' + @customer['email'] + ',' + @customer['bank balance'])
    customer_file.write("\n")
    customer_file.close
    puts "Customer added to file."
    puts "=" * 15
  end
end

  def read_from_file
    filename  = 'customer.csv'
    customer_file = File.open(filename, 'r')
    customer_file.each {|line| print line}
  end

  def draw_lines
    puts "=" * 10
  end

  def draw_menu
    puts "Welcome to the Bank"
    draw_lines
    puts "What would you like to do today?"
    draw_lines
    puts "1. Add customer"
    puts "2. Remove customer"
    puts "3. Edit customer"
    puts "4. Make a deposit"
    puts "5. Make a withdrawal"
    puts "6. Display customer details"
    draw_lines
    puts "7. Exit"
  end


while true
  draw_menu
  answer = gets.chomp

  if answer == '1' #add customer
    puts "What is the customer's ID?"
    customer_id = gets.chomp
    puts "What is the customer's name?"
    customer_name = gets.chomp
    puts "What is the customer's address?"
    customer_address = gets.chomp
    puts "What is the customer's phone number?"
    customer_phone_number = gets.chomp
    puts "What is the customer's email?"
    customer_email = gets.chomp
    puts "What is the customer's bank balance?"
    customer_bank_balance = gets.chomp

    new_customer = Customer.new({"customer id" => customer_id, "name" => customer_name, "address" => customer_address, "phone number" => customer_phone_number, "email" => customer_email, "bank balance" => customer_bank_balance})
    new_customer.print_customer_info
    new_customer.save_to_file
  end

end
