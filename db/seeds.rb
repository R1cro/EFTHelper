# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

calibers = ['12x70', '9x18', '9x19', '9x21', '9x39', '.366 TKM', '7.62x25', '7.62x39', '7.62x51', '7.62x54', '5.45x39', '5.45x45']

calibers.each{|caliber| Caliber.create(name: caliber, gun_id: nil, bullet_id: nil)}
