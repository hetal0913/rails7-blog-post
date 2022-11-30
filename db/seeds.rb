# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.create(name: 'Admin', email: "admin@test.com", password: 'password')

posts = Post.create([
    {
      content: 'What is the difference between string and symbol?',
      title: 'Ruby Question',
      user_id: user.id
    },
    {
      content: 'What happened if you add two same keys in Hash?',
      title: 'Hashes',
      user_id: user.id
    },
    {
      content: 'How to delete a given key from hash?',
      title: 'Hashes',
      user_id: user.id
    },
    {
      content: 'How to check if two hash are identical?',
      title: 'Hashes',
      user_id: user.id
    },
    {
      content: 'How to combine two hash are identical?',
      title: 'Ruby',
      user_id: user.id
    },
    {
      content: 'How to get unique keys from two hashes in Ruby?',
      title: 'Hashes',
      user_id: user.id
    },
    {
      content: 'What does the has_key?, key?, member? and include? methods in a hash?',
      title: 'Subjective',
      user_id: user.id
    },
    {
      content: 'What are blocks in Ruby?',
      title: 'Blocks',
      user_id: user.id
    },
    {
      content: 'Does the order of keys matters to compare two hashes?',
      title: 'Hashes',
      user_id: user.id
    },
    {
      content: 'What is the difference between save and save! methods?',
      title: 'Active Record',
      user_id: user.id
    }, 
    {
      content: 'What is the difference between render and redirect?',
      title: 'Active Record',
      user_id: user.id
    }, 
    {
      content: 'What is the difference between delete and destroy?',
      title: 'Active Record',
      user_id: user.id
    }
  ])
  puts 'posts Created'
