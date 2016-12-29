# Create Admin user
User.create(full_name: "Admin", email: "admin@admin.com", password: "123qwe", role_id: 0)

# Create normal user
User.create(full_name: "User", email: "user@app.com", password: "123qwe", role_id: 1)
