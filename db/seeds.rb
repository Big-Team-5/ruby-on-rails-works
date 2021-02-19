# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Employee.create(nom: 'Genest', prenom: 'Nicolas', title: 'CEO', 'email' => 'nicolas.genest@codeboxx.biz', 'active' => 1)
Employee.create(nom: 'Fortier', prenom: 'Nadya', title: 'Director', 'email' => 'nadya.fortier@codeboxx.biz', 'active' => 1)
Employee.create(nom: 'Chantal', prenom: 'Martin', title: 'Director Assistant', 'email' => 'martin.chantal@codeboxx.biz', 'active' => 1)
Employee.create(nom: 'Houde', prenom: 'Mathieu', title: 'Captain', 'email' => 'mathieu.houde@codeboxx.biz', 'active' => 1)
Employee.create(nom: 'Boutin', prenom: 'David', title: 'Engineer', 'email' => 'david.boutin@codeboxx.biz', 'active' => 1)
Employee.create(nom: 'Lortie', prenom: 'Mathieu', title: 'Engineer', 'email' => 'mathieu.lortie@codeboxx.biz', 'active' => 1)
Employee.create(nom: 'Carrier', prenom: 'Thomas ', title: 'Engineer', 'email' => 'thomas.carrier@codeboxx.biz', 'active' => 1)
