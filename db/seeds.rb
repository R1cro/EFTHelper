# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
bullets = [[1,'Slug'],
           [1,'Buckshot'],
           [1,'RIP'],
           [7,'EKO'],
           [7,'FMJ'],
           [7,'Geksa'],
           [2,'AP SX'],
           [2, 'Subsonic SX'],
           [2, 'FMJ SX'],
           [12, '7N39 "Igolnik"'],
           [12, 'BS'],
           [12, 'BT'],
           [12, 'BP'],
           [12, 'PP'],
           [12, 'PS'],
           [12, 'T'],
           [12, 'FMJ'],
           [12, 'US'],
           [12, 'PRS'],
           [12, 'HP'],
           [12, 'SP'],
           [13, 'M995'],
           [13, 'M856A1'],
           [13, 'M855A1'],
           [13, 'M855'],
           [13, '55 FMJ'],
           [13, 'M856'],
           [13, 'Mk 255 Mod 0'],
           [13, '55 HP'],
           [13, 'Warmage'],
           [8, 'TT Pst gzh'],
           [8, 'TT PT gzh'],
           [8, 'TT P gl'],
           [8, 'TT AKBS'],
           [8, 'TT FMJ43'],
           [8, 'TT LRN'],
           [8, 'TT LRNPC'],
           [12, 'BP'],
           [12, 'PS'],
           [12, 'T45M'],
           [12, 'US'],
           [10, 'M61'],
           [10, 'M62'],
           [10, 'M80'],
           [11, 'SNB'],
           [11, '7N1 SC'],
           [11, 'LPS Czh'],
           [3, 'PM PMM'],
           [3, 'PM 9 BZT gzh'],
           [3, 'PM RG028 gzh'],
           [3, 'PM Pst gzh'],
           [3, 'PM SP7 gzh'],
           [3, 'PM PPT gzh'],
           [3, 'PM PS gs PPO'],
           [3, 'PM PSV'],
           [3, 'PM PPe gzh'],
           [3, 'PM PRS gzh'],
           [3, 'PM PSO gzh'],
           [3, 'PM 9 P gzh'],
           [3, 'PM SP8 gzh'],
           [4, 'AP 6.3'],
           [4, 'Pst gzh'],
           [4, 'Green Tracer'],
           [4, 'PSO gzh'],
           [4, 'Luger CCI'],
           [5, 'SP13'],
           [5, 'SP10'],
           [5, 'SP11'],
           [5, 'SP12'],
           [6, 'ZN12 BP'],
           [6, 'ZN9 SPP'],
           [6, 'SP-6'],
           [6, 'SP-5'],
           [14, 'Buckshot']
]

calibers = ['12x70', '4.6x30', '9x18', '9x19', '9x21', '9x39', '.366 TKM', '7.62x25', '7.62x39', '7.62x51', '7.62x54R', '5.45x39', '5.45x45', '20x70']
calibers.each{|caliber| Caliber.create(name: caliber)}

guns = [[13, 'M4A1'], [12, 'AK-47M'], [13,'HK416A1'], [10,'M1A']]
guns.each do |gun|
  big_gun = Gun.create(caliber_id: gun[0], name: gun[1])

  bullets.each do |bullet|
    if bullet[0] == big_gun.caliber_id
      Bullet.create(caliber_id: bullet[0], gun_id: big_gun.id,  name: bullet[1])
    else
      Bullet.create(caliber_id: bullet[0], gun_id: nil,  name: bullet[1])
    end
  end

end





