# Create Admin user
User.create(full_name: "Admin", email: "admin@admin.com", password: "123qwe", role_id: 0)

# Create normal user
User.create(full_name: "User", email: "user@app.com", password: "123qwe", role_id: 1)

# Create Items
Item.create({name: 'Item 1', price: 12.0, quantity: 12})
Item.create({name: 'Item 2', price: 12.0, quantity: 1})
Item.create({name: 'Item 3', price: 12.0, quantity: 32})
Item.create({name: 'Item 4', price: 12.0, quantity: 19})
Item.create({name: 'Item 5', price: 12.0, quantity: 6})
Item.create({name: 'Item 6', price: 12.0, quantity: 25})
Item.create({name: 'Item 7', price: 12.0, quantity: 2})
Item.create({name: 'Item 8', price: 12.0, quantity: 8})
Item.create({name: 'Item 9', price: 12.0, quantity: 0})
Item.create({name: 'Item 10', price: 12.0, quantity: 23})
Item.create({name: 'Item 11', price: 12.0, quantity: 32})
Item.create({name: 'Item 12', price: 12.0, quantity: 20})
Item.create({name: 'Item 13', price: 12.0, quantity: 20})
Item.create({name: 'Item 14', price: 12.0, quantity: 5})
Item.create({name: 'Item 15', price: 12.0, quantity: 3})