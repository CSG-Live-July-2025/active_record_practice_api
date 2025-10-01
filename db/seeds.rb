# db/seeds.rb

# Clear out existing data
User.destroy_all
Post.destroy_all
Product.destroy_all

# --- Users ---
alice   = User.create!(name: "Alice")
bob     = User.create!(name: "Bob")
charlie = User.create!(name: "Charlie")
diana   = User.create!(name: "Diana") # edge case: no posts

# --- Posts ---
Post.create!(title: "Alice's First Post", context: "This is Alice’s first post.", published: true, user: alice)
Post.create!(title: "Alice's Draft", context: "This is a draft by Alice.", published: false, user: alice)

Post.create!(title: "Bob’s Travel Log", context: "Bob writes about his trip.", published: true, user: bob)
Post.create!(title: "Bob’s Thoughts", context: "Some random musings.", published: false, user: bob)

Post.create!(title: "Charlie’s Announcement", context: "Big news from Charlie!", published: true, user: charlie)
Post.create!(title: "Charlie’s Secret Notes", context: "Unpublished notes only.", published: false, user: charlie)
Post.create!(title: "Charlie’s Second Post", context: "Another update from Charlie.", published: true, user: charlie)

# --- Products ---
Product.create!(name: "Laptop", price: 1200.00)
Product.create!(name: "Headphones", price: 150.00)
Product.create!(name: "Coffee Mug", price: 12.50)
Product.create!(name: "Desk Chair", price: 300.00)
Product.create!(name: "Mechanical Keyboard", price: 90.00)

puts "Seeded #{User.count} users, #{Post.count} posts, and #{Product.count} products."
