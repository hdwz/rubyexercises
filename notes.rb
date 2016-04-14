
  def save_to_file
    filename = 'customer.csv'
    customer_file = open(filename, 'a')
    customer_file.write(@cust['name'] + ',' + @cust['starsign'] + ',' + @cust['age'].to_s)
    customer_file.write("\n")
    customer_file.clsoe
    puts "Customer added to file."
    puts "=" * 15
  end

  def read_from_file
    filename  = 'customer.csv'
    customer_file = File.open(filename, 'r')
    customer_file.each {|line| print line}
  end

#if choice == "1"
  #add customer
#elsif choice == "2"
  #remove customer

#learning git comments etc
#add random comment
#this is going to be a demo of a pull request
