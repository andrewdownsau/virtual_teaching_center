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


teacher_classes = [
  {
    title: 'Building a computer', 
    description: 'Making your own PC from scratch. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non pulvinar dui, nec placerat leo. Donec eget pulvinar turpis, id viverra risus. Donec ipsum lacus, bibendum in hendrerit non, porttitor quis eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque quis nisl purus. Donec faucibus sodales ante ut pharetra. Nunc facilisis accumsan est in interdum. Pellentesque euismod ultrices sapien vel consectetur. Fusce porttitor feugiat dolor, fermentum placerat metus sodales sed. In nec orci nisi. ', 
    min_students: 10,
    max_students: 20,
    price: 40.0,
    category_id: 5,
    teacher_id: 3,
  },
  {
    title: 'Hacking your phone', 
    description: 'Unlock your phone potential. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non pulvinar dui, nec placerat leo. Donec eget pulvinar turpis, id viverra risus. Donec ipsum lacus, bibendum in hendrerit non, porttitor quis eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque quis nisl purus. Donec faucibus sodales ante ut pharetra. Nunc facilisis accumsan est in interdum. Pellentesque euismod ultrices sapien vel consectetur. Fusce porttitor feugiat dolor, fermentum placerat metus sodales sed. In nec orci nisi. ', 
    min_students: 5,
    max_students: 20,
    price: 60.0,
    category_id: 5,
    teacher_id: 3,
  },
  {
    title: 'English in summary', 
    description: 'Basic language principles. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non pulvinar dui, nec placerat leo. Donec eget pulvinar turpis, id viverra risus. Donec ipsum lacus, bibendum in hendrerit non, porttitor quis eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque quis nisl purus. Donec faucibus sodales ante ut pharetra. Nunc facilisis accumsan est in interdum. Pellentesque euismod ultrices sapien vel consectetur. Fusce porttitor feugiat dolor, fermentum placerat metus sodales sed. In nec orci nisi. ', 
    min_students: 15,
    max_students: 30,
    price: 440.0,
    category_id: 2,
    teacher_id: 1,
  },
  {
    title: 'Gramma and the like', 
    description: 'Proper words and how to use them. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non pulvinar dui, nec placerat leo. Donec eget pulvinar turpis, id viverra risus. Donec ipsum lacus, bibendum in hendrerit non, porttitor quis eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque quis nisl purus. Donec faucibus sodales ante ut pharetra. Nunc facilisis accumsan est in interdum. Pellentesque euismod ultrices sapien vel consectetur. Fusce porttitor feugiat dolor, fermentum placerat metus sodales sed. In nec orci nisi. ', 
    min_students: 15,
    max_students: 25,
    price: 50.0,
    category_id: 2,
    teacher_id: 1,
  },
  {
    title: 'Doctors collaborations', 
    description: 'Research and high-level medical concepts. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non pulvinar dui, nec placerat leo. Donec eget pulvinar turpis, id viverra risus. Donec ipsum lacus, bibendum in hendrerit non, porttitor quis eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque quis nisl purus. Donec faucibus sodales ante ut pharetra. Nunc facilisis accumsan est in interdum. Pellentesque euismod ultrices sapien vel consectetur. Fusce porttitor feugiat dolor, fermentum placerat metus sodales sed. In nec orci nisi. ', 
    min_students: 5,
    max_students: 10,
    price: 600.0,
    category_id: 5,
    teacher_id: 5,
  },
  {
    title: 'Robotic surgery', 
    description: 'How machines could improve modern medicine. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non pulvinar dui, nec placerat leo. Donec eget pulvinar turpis, id viverra risus. Donec ipsum lacus, bibendum in hendrerit non, porttitor quis eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque quis nisl purus. Donec faucibus sodales ante ut pharetra. Nunc facilisis accumsan est in interdum. Pellentesque euismod ultrices sapien vel consectetur. Fusce porttitor feugiat dolor, fermentum placerat metus sodales sed. In nec orci nisi. ', 
    min_students: 10,
    max_students: 20,
    price: 400.0,
    category_id: 5,
    teacher_id: 5,
  },
  {
    title: 'Paris', 
    description: 'Everything you want to know about France. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non pulvinar dui, nec placerat leo. Donec eget pulvinar turpis, id viverra risus. Donec ipsum lacus, bibendum in hendrerit non, porttitor quis eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque quis nisl purus. Donec faucibus sodales ante ut pharetra. Nunc facilisis accumsan est in interdum. Pellentesque euismod ultrices sapien vel consectetur. Fusce porttitor feugiat dolor, fermentum placerat metus sodales sed. In nec orci nisi. ', 
    min_students: 30,
    max_students: 50,
    price: 300.0,
    category_id: 1,
    teacher_id: 2,
  },
  {
    title: 'Cooking in french', 
    description: 'Veux le veux la parle ou francie? Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non pulvinar dui, nec placerat leo. Donec eget pulvinar turpis, id viverra risus. Donec ipsum lacus, bibendum in hendrerit non, porttitor quis eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque quis nisl purus. Donec faucibus sodales ante ut pharetra. Nunc facilisis accumsan est in interdum. Pellentesque euismod ultrices sapien vel consectetur. Fusce porttitor feugiat dolor, fermentum placerat metus sodales sed. In nec orci nisi. ', 
    min_students: 10,
    max_students: 20,
    price: 40.0,
    category_id: 4,
    teacher_id: 2,
  },
  {
    title: 'Descriete Mathematics', 
    description: 'Graph theory and the like. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non pulvinar dui, nec placerat leo. Donec eget pulvinar turpis, id viverra risus. Donec ipsum lacus, bibendum in hendrerit non, porttitor quis eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque quis nisl purus. Donec faucibus sodales ante ut pharetra. Nunc facilisis accumsan est in interdum. Pellentesque euismod ultrices sapien vel consectetur. Fusce porttitor feugiat dolor, fermentum placerat metus sodales sed. In nec orci nisi. ', 
    min_students: 10,
    max_students: 20,
    price: 40.0,
    category_id: 7,
    teacher_id: 4,
  },
  {
    title: 'Big O notation', 
    description: 'Notation notation notation. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus non pulvinar dui, nec placerat leo. Donec eget pulvinar turpis, id viverra risus. Donec ipsum lacus, bibendum in hendrerit non, porttitor quis eros. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Pellentesque quis nisl purus. Donec faucibus sodales ante ut pharetra. Nunc facilisis accumsan est in interdum. Pellentesque euismod ultrices sapien vel consectetur. Fusce porttitor feugiat dolor, fermentum placerat metus sodales sed. In nec orci nisi. ', 
    min_students: 10,
    max_students: 20,
    price: 40.0,
    category_id: 7,
    teacher_id: 4,
  }
]

teacher_classes.each do |teacher_class|
  TeacherClass.create!(teacher_class)
end