PRODUCTS = [
  { name: "Thinkpad x210", price: 220 },
  { name: "Thinkpad x220", price: 250 },
  { name: "Thinkpad x250", price: 979 },
  { name: "Thinkpad x230", price: 300 },
  { name: "Thinkpad x230", price: 330 },
  { name: "Thinkpad x230", price: 350 },
  { name: "Thinkpad x240", price: 700 },
  { name: "Macbook Leopard", price: 300 }, 
  { name: "Macbook Air", price: 700},
  { name: "Macbook Pro", price: 600 },
  { name: "Macbook", price: 1449 },
  { name: "Dell Latitude", price: 200 }, 
  { name: "Dell Latitude", price: 650 },
  { name: "Dell Inspiron", price: 300 },
  { name: "Dell Inspiron", price: 450 }
]

query = { price_min: 240, price_max: 280, q: 'thinkpad' }

query2 = { price_min: 300, price_max: 450, q: 'dell' }

def get_items(query)
  
  valid_items = []
  
  PRODUCTS.select do |item|
    lowercase_name = item[:name].downcase
    lowercase_name.include?(query[:q]) &&
       item[:price] >= query[:price_min] &&
       item[:price] <= query[:price_max]
  end
  # valid_items
end

p get_items(query)