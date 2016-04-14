customers = [{"name" => "Pete", "age" => 25, "starsign" => "Taurus"}, { "name" => "Anne", "age" => 24, "starsign" => "Aries"}]

customers.each do |customer|
  puts customer["name"]
  puts customer["age"]
  puts customer["starsign"]
  puts "=" * 15
  
end
