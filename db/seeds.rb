# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Owner.create(first_name: 'Clark', last_name: 'Kent', age: '18', email: 'clark.kent@gmail.com')
Owner.create(first_name: 'Super', last_name: 'Woman', age: '17', email: 'super.kent@gmail.com')
Owner.create(first_name: 'Mom', last_name: 'Man', age: '25', email: 'merman@gmail.com')


Cup.create(name: 'whole', size: 'small', owner_id: '1')
Cup.create(name: 'broken', size: 'medium', owner_id: '1')
Cup.create(name: 'one', size: 'larger', owner_id: '2')
Cup.create(name: 'piece', size: 'medium', owner_id: '2')
Cup.create(name: 'why', size: 'small', owner_id: '3')
