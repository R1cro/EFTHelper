# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#
#
firearms = ['Assault Rifle', 'Assault Carbine', 'Sniper Rifle', 'SMG', 'DMR', 'Pistol', 'Shotgun', 'Machine Weapon']
firearms.each do |firearm|
  Firearm.create(name: firearm)
end

calibers = ['12x70', '4.6x30', '9x18', '9x19', '9x21', '9x39', '.366 TKM', '7.62x25', '7.62x39', '7.62x51', '7.62x54R', '5.45x39', '5.45x45', '20x70']
calibers.each{|caliber| Caliber.create(name: caliber)}

bullets = [[1,'Slug', 165, 21, 370, 10, 100, 1], # caliber_id, name, damage, penetration, muzzle_velocity, ricochet_chance (%), frg_chance (%), armor_damage (%)
           [1,'Buckshot', 32, 3, 320, 0, 0, 20],
           [1,'RIP', 256, 2, 410, 1, 100, 48],
           [7,'EKO', 65, 26, 770, 10, 20, 25],
           [7,'FMJ', 71, 20, 580, 7, 25, 24],
           [7,'Geksa', 77, 14, 550, 5, 5, 25],
           [2,'AP SX', 35, 46, 680, 60, 10, 32],
           [2, 'Subsonic SX', 41, 34, 290, 50, 20, 32],
           [2, 'FMJ SX', 43, 30, 620, 40, 20, 28],
           [2, 'Action SX', 65, 13, 690, 30, 50, 26],
           [12, '7N39 "Igolnik"', 37, 62, 905, 38, 2, 44],
           [12, 'BS', 40, 50, 830, 38, 17, 41],
           [12, 'BT', 44, 33, 880, 37, 16, 37],
           [12, 'BP', 42, 32, 890, 36, 16, 25],
           [12, 'PP', 46, 27, 890, 38, 17, 35],
           [12, 'PS', 50, 23, 890, 40, 40, 33],
           [12, 'T', 57, 20, 883, 40, 16, 25],
           [12, 'FMJ', 54, 18, 884, 26, 25, 30],
           [12, 'US', 65, 15, 303, 40, 10, 22],
           [12, 'HP', 73, 11, 884, 20, 35, 20],
           [12, 'PRS', 60, 14, 890, 4, 3, 22],
           [12, 'SP', 68, 11, 873, 15, 45, 22],
           [13, 'M995', 42, 53, 1013, 36, 32, 41],
           [13, 'M856A1', 56, 34, 940, 38, 33, 31],
           [13, 'M855A1', 57, 31, 945, 38, 34, 29],
           [13, 'M855', 50, 26, 922, 40, 40, 27],
           [13, '55 FMJ', 52, 24, 957, 26, 50, 31],
           [13, 'M856', 55, 23, 874, 38, 33, 25],
           [13, 'Mk 255 Mod 0', 60, 17, 936, 10, 3, 20],
           [13, '55 HP', 72, 9, 947, 20, 70, 25],
           [13, 'Warmage', 83, 3, 910, 5, 90, 15],
           [8, 'TT Pst gzh', 50, 19, 430, 10, 20, 24],
           [8, 'TT T gzh', 60, 12, 415, 10, 17, 22],
           [8, 'TT P gl', 58, 10, 430, 7, 25, 20],
           [8, 'TT AKBS', 58, 9, 425, 7, 25, 20],
           [8, 'TT FMJ43', 60, 8, 427, 7, 25, 18],
           [8, 'TT LRN', 64, 6, 375, 5, 35, 17],
           [8, 'TT LRNPC', 66, 5, 385, 5, 35, 16],
           [12, 'BP', 50, 45, 730, 32, 12, 48],
           [12, 'PS', 57, 33, 700, 35, 25, 35],
           [12, 'T45M', 58, 26, 720, 35, 12, 34],
           [12, 'US', 68, 19, 300, 36, 8, 28],
           [10, 'M61', 70, 68, 849, 30, 13, 63],
           [10, 'M62', 79, 54, 816, 38, 14, 56],
           [10, 'M80', 78, 50, 833, 38, 17, 49],
           [11, 'SNB', 75, 62, 875, 29, 8, 66],
           [11, '7N1 SC', 86, 45, 875, 29, 8 , 64],
           [11, 'LPS Czh', 84, 55, 865, 39, 18, 59],
           [3, 'PMM', 59, 8, 420, 10, 17, 15],
           [3, '9 BZT gzh', 44, 8, 325, 10, 17, 15],
           [3, 'RG028 gzh', 51, 7, 330, 5, 2, 15],
           [3, 'PST gzh', 49, 7, 29, 10, 20, 15],
           [3, 'SP7 gzh', 70, 6, 420, 5, 2, 25],
           [3, 'PPT gzh', 53, 6, 301, 10, 17, 14],
           [3, 'PS gs PPO', 53, 6, 330, 7, 25, 14],
           [3, 'PSV', 62, 5, 280, 5, 2, 18],
           [3, 'PPE gzh', 58, 5, 297, 5, 35, 13],
           [3, 'PRS gzh', 56, 5, 302, 1, 30, 13],
           [3, 'PSO gzh', 54, 5, 315, 7, 35, 13],
           [3, '9 P gzh', 53, 5, 302, 7, 25, 14],
           [3, 'SP8 gzh', 67, 3, 250, 5, 2, 27],
           [4, 'AP 6.3', 52, 25, 392, 60, 5, 48],
           [4, 'PST gzh', 56, 18, 457, 5, 15, 21],
           [4, 'Green Tracer', 58, 16, 365, 5, 15, 33],
           [4, 'PSO gzh', 63, 13, 340, 65, 25, 20],
           [4, 'Luger CCI', 70, 10, 420, 65, 25, 25],
           [5, 'SP13', 48, 30, 397, 40, 20, 33],
           [5, 'SP10', 45, 28, 410, 40, 20, 32],
           [5, 'SP11', 66, 12, 413, 20, 30, 30],
           [5, 'SP12', 72, 10, 415, 20, 35, 46],
           [6, 'ZN12 BP', 60, 44, 295, 35, 10, 68],
           [6, 'ZN9 SPP', 67, 38, 310, 35, 20, 56],
           [6, 'SP-6', 58, 38, 305, 50, 10, 44],
           [6, 'SP-5', 68, 30, 290, 40, 20, 37],
           [14, 'Buckshot', 20, 3, 320, 0, 0, 22]
]

bullets.each do |bullet|
  Bullet.create(caliber_id: bullet[0],
                name: bullet[1],
                damage: bullet[2],
                penetration: bullet[3],
                muzzle_velocity: bullet[4],
                ricochet_chance: bullet[5],
                frag_chance: bullet[6],
                armor_damage: bullet[7])
end

weapons = [[13, 'M4A1', 1], [12, 'AK-47M', 1], [13,'HK416A1', 1], [10,'M1A', 2]]

weapons.each do |gun|
  Weapon.create(caliber_id: gun[0], name: gun[1], firearm_id: gun[2])
end
