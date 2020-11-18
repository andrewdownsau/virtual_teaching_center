# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


teachers = [
  {
    email: '1@test.com', 
    password: 'password', 
    password_confirmation: 'password',
    title: "Mr",
    first_name: "Frederic",
    last_name: "Graham",
    country: "England",
    primary_language: "English",
    biography: "English teacher. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non pulvinar dui, nec placerat leo. Donec eget pulvinar turpis, id viverra risus. Donec ipsum lacus, bibendum in hendrerit non, porttitor quis eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque quis nisl purus. Donec faucibus sodales ante ut pharetra. Nunc facilisis accumsan est in interdum. Pellentesque euismod ultrices sapien vel consectetur. Fusce porttitor feugiat dolor, fermentum placerat metus sodales sed. In nec orci nisi. "
  },
  {
    email: '2@test.com', 
    password: 'password', 
    password_confirmation: 'password',
    title: "Dr",
    first_name: "Bethany",
    last_name: "Strenem",
    country: "France",
    primary_language: "French",
    biography: "French teacher. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non pulvinar dui, nec placerat leo. Donec eget pulvinar turpis, id viverra risus. Donec ipsum lacus, bibendum in hendrerit non, porttitor quis eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque quis nisl purus. Donec faucibus sodales ante ut pharetra. Nunc facilisis accumsan est in interdum. Pellentesque euismod ultrices sapien vel consectetur. Fusce porttitor feugiat dolor, fermentum placerat metus sodales sed. In nec orci nisi. "
  },
  {
    email: '3@test.com', 
    password: 'password', 
    password_confirmation: 'password',
    title: "Ms",
    first_name: "Angela",
    last_name: "Norton",
    country: "Australia",
    primary_language: "English",
    biography: "Handywork tutor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non pulvinar dui, nec placerat leo. Donec eget pulvinar turpis, id viverra risus. Donec ipsum lacus, bibendum in hendrerit non, porttitor quis eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque quis nisl purus. Donec faucibus sodales ante ut pharetra. Nunc facilisis accumsan est in interdum. Pellentesque euismod ultrices sapien vel consectetur. Fusce porttitor feugiat dolor, fermentum placerat metus sodales sed. In nec orci nisi. "
  },
  {
    email: '4@test.com', 
    password: 'password', 
    password_confirmation: 'password',
    title: "Prof",
    first_name: "Edward",
    last_name: "Surrex",
    country: "USA",
    primary_language: "English",
    biography: "Mathematics teacher. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non pulvinar dui, nec placerat leo. Donec eget pulvinar turpis, id viverra risus. Donec ipsum lacus, bibendum in hendrerit non, porttitor quis eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque quis nisl purus. Donec faucibus sodales ante ut pharetra. Nunc facilisis accumsan est in interdum. Pellentesque euismod ultrices sapien vel consectetur. Fusce porttitor feugiat dolor, fermentum placerat metus sodales sed. In nec orci nisi. "
  },
  {
    email: '5@test.com', 
    password: 'password', 
    password_confirmation: 'password',
    title: "Dr",
    first_name: "Martin",
    last_name: "Rogers",
    country: "South Africa",
    primary_language: "English",
    biography: "Medical tutor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non pulvinar dui, nec placerat leo. Donec eget pulvinar turpis, id viverra risus. Donec ipsum lacus, bibendum in hendrerit non, porttitor quis eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque quis nisl purus. Donec faucibus sodales ante ut pharetra. Nunc facilisis accumsan est in interdum. Pellentesque euismod ultrices sapien vel consectetur. Fusce porttitor feugiat dolor, fermentum placerat metus sodales sed. In nec orci nisi. "
  }
]

teachers.each do |teacher|
  Teacher.create!(teacher)
end


category_list = [
    "Art",
    "Business",
    "Caring",
    "Cooking",
    "Technology",
    "Housework",
    "Coding"
  ]

category_list.each do |title|
  Category.create( title: title )
end
