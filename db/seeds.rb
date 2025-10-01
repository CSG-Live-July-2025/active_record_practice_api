# db/seeds.rb

# Clear out existing data (optional for fresh seeds)
User.destroy_all
Post.destroy_all

# Create users
user1 = User.create!(name: "Alice")
user2 = User.create!(name: "Bob")
user3 = User.create!(name: "Charlie")

# Create posts for Alice
Post.create!(title: "Alice's First Post", context: "This is Alice’s first post.", published: true, user: user1)
Post.create!(title: "Alice's Draft", context: "This is a draft by Alice.", published: false, user: user1)

# Create posts for Bob
Post.create!(title: "Bob’s Travel Log", context: "Bob writes about his trip.", published: true, user: user2)
Post.create!(title: "Bob’s Thoughts", context: "Some random musings.", published: false, user: user2)

# Create posts for Charlie
Post.create!(title: "Charlie’s Announcement", context: "Big news from Charlie!", published: true, user: user3)
Post.create!(title: "Charlie’s Secret Notes", context: "Unpublished notes only.", published: false, user: user3)
Post.create!(title: "Charlie’s Second Post", context: "Another update from Charlie.", published: true, user: user3)

puts "Seeded #{User.count} users and #{Post.count} posts."
