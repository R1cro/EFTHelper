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

calibers = ['12x70', '4.6x30', '9x18', '9x19', '9x21', '9x39', '.366 TKM', '7.62x25', '7.62x39', '7.62x51', '7.62x54R', '5.45x39', '5.45x45 NATO', '20x70']
calibers.each{|caliber| Caliber.create(name: caliber)}

bullets = [[1, 'Slug', 165, 21, 370, 10, 100, 1, false, false], # caliber_id, name, damage, penetration, muzzle_velocity, ricochet_chance (%), frag_chance (%), armor_damage (%), tracer (boolean), subsonic (boolean)
           [1, 'Buckshot', 32, 3, 320, 0, 0, 20, false, true],
           [1, 'RIP', 256, 2, 410, 1, 100, 48, false, false],
           [7, 'EKO', 65, 26, 770, 10, 20, 25, false, false],
           [7, 'FMJ', 71, 20, 580, 7, 25, 24, false, false],
           [7, 'Geksa', 77, 14, 550, 5, 5, 25, false, false],
           [2, 'AP SX', 35, 46, 680, 60, 10, 32, false, false],
           [2, 'Subsonic SX', 41, 34, 290, 50, 20, 32, false, true],
           [2, 'FMJ SX', 43, 30, 620, 40, 20, 28, false, false],
           [2, 'Action SX', 65, 13, 690, 30, 50, 26, false, false],
           [12, '7N39 "Igolnik"', 37, 62, 905, 38, 2, 44, false, false],
           [12, 'BS', 40, 50, 830, 38, 17, 41, false, false],
           [12, 'BT', 44, 33, 880, 37, 16, 37, true, false],
           [12, 'BP', 42, 32, 890, 36, 16, 25, false, false],
           [12, 'PP', 46, 27, 890, 38, 17, 35, false, false],
           [12, 'PS', 50, 23, 890, 40, 40, 33, false, false],
           [12, 'T', 57, 20, 883, 40, 16, 25, true, false],
           [12, 'FMJ', 54, 18, 884, 26, 25, 30, false, false],
           [12, 'US', 65, 15, 303, 40, 10, 22, false, false],
           [12, 'HP', 73, 11, 884, 20, 35, 20, false, false],
           [12, 'PRS', 60, 14, 890, 4, 3, 22, false, false],
           [12, 'SP', 68, 11, 873, 15, 45, 22, false, false],
           [13, 'M995', 42, 53, 1013, 36, 32, 41, false, false],
           [13, 'M856A1', 56, 34, 940, 38, 33, 31, true, false],
           [13, 'M855A1', 57, 31, 945, 38, 34, 29, false, false],
           [13, 'M855', 50, 26, 922, 40, 40, 27, false, false],
           [13, '55 FMJ', 52, 24, 957, 26, 50, 31, false, false],
           [13, 'M856', 55, 23, 874, 38, 33, 25, true, false],
           [13, 'Mk 255 Mod 0', 60, 17, 936, 10, 3, 20, false, false],
           [13, '55 HP', 72, 9, 947, 20, 70, 25, false, false],
           [13, 'Warmage', 83, 3, 910, 5, 90, 15, false, false],
           [8, 'TT Pst gzh', 50, 19, 430, 10, 20, 24, false, false],
           [8, 'TT PT gzh', 60, 12, 415, 10, 17, 22, true, false],
           [8, 'TT P gl', 58, 10, 430, 7, 25, 20, false, false],
           [8, 'TT AKBS', 58, 9, 425, 7, 25, 20, false, false],
           [8, 'TT FMJ43', 60, 8, 427, 7, 25, 18, false, false],
           [8, 'TT LRN', 64, 6, 375, 5, 35, 17, false, false],
           [8, 'TT LRNPC', 66, 5, 385, 5, 35, 16, false, false],
           [9, 'BP', 50, 45, 730, 32, 12, 48, false, false],
           [9, 'PS', 57, 33, 700, 35, 25, 35, false, false],
           [9, 'T45M', 58, 26, 720, 35, 12, 34, true, false],
           [9, 'US', 68, 19, 300, 36, 8, 28, false, true],
           [9, 'HP', 76, 15, 754, 18, 26, 31, false, false],
           [10, 'M61', 70, 68, 849, 30, 13, 63, false, false],
           [10, 'M62', 79, 54, 816, 38, 14, 56, true, false],
           [10, 'M80', 78, 50, 833, 38, 17, 49, false, false],
           [11, 'SNB', 75, 62, 875, 29, 8, 66, false, false],
           [11, '7N1 SC', 86, 45, 875, 29, 8 , 64, false, false],
           [11, 'LPS Czh', 84, 55, 865, 39, 18, 59, false, false],
           [3, 'PMM', 59, 8, 420, 10, 17, 15, false, false],
           [3, '9 BZT gzh', 44, 8, 325, 10, 17, 15, false, true],
           [3, 'PBM', 39, 8, 519, 10, 16, 26, false, false],
           [3, 'RG028 gzh', 51, 7, 330, 5, 2, 15, false, true],
           [3, 'PST gzh', 49, 7, 29, 10, 20, 15, false, true],
           [3, 'SP7 gzh', 70, 6, 420, 5, 2, 25, false, false],
           [3, 'PPT gzh', 53, 6, 301, 10, 17, 14, true, true],
           [3, 'PS gs PPO', 53, 6, 330, 7, 25, 14, false, true],
           [3, 'PSV', 62, 5, 280, 5, 2, 18, false, true],
           [3, 'PPe gzh', 58, 5, 297, 5, 35, 13, false, true],
           [3, 'PRS gzh', 56, 5, 302, 1, 30, 13, false, true],
           [3, 'PSO gzh', 54, 5, 315, 7, 35, 13, false, true],
           [3, '9 P gzh', 53, 5, 302, 7, 25, 14, false, true],
           [3, 'SP8 gzh', 67, 3, 250, 5, 2, 27, false, true],
           [4, 'AP 6.3', 52, 25, 392, 60, 5, 48, false, false],
           [4, 'PST gzh', 56, 18, 457, 5, 15, 21, false, false],
           [4, 'Green Tracer', 58, 16, 365, 5, 15, 33, true, false],
           [4, 'PSO gzh', 63, 13, 340, 65, 25, 20, false, true],
           [4, 'Luger CCI', 70, 10, 420, 65, 25, 25, false, false],
           [4, 'RIP', 102, 2, 381, 0, 100, 11, false, false],
           [5, 'SP13', 48, 30, 397, 40, 20, 33, true, false],
           [5, 'SP10', 45, 28, 410, 40, 20, 32, false, false],
           [5, 'SP11', 66, 12, 413, 20, 30, 30, false, false],
           [5, 'SP12', 72, 10, 415, 20, 35, 46, false, false],
           [6, 'ZN12 BP', 60, 44, 295, 35, 10, 68, false, true],
           [6, 'ZN9 SPP', 67, 38, 310, 35, 20, 56, false, true],
           [6, 'SP-6', 58, 38, 305, 50, 10, 44, false, true],
           [6, 'SP-5', 68, 30, 290, 40, 20, 37, false, true],
           [14, 'Buckshot', 20, 3, 320, 0, 0, 22, false, true]
]

bullets.each do |bullet|
  Bullet.create(caliber_id: bullet[0],
                name: bullet[1],
                damage: bullet[2],
                penetration: bullet[3],
                muzzle_velocity: bullet[4],
                ricochet_chance: bullet[5],
                frag_chance: bullet[6],
                armor_damage: bullet[7],
                tracer: bullet[8],
                subsonic: bullet[9])
end

weapons = [[13, 'M4A1', 1, false, true, true, 800, 500], # caliber_id, name, firearm_id, foldable (boolean), fire_mode (Semi, Burst, Auto), fire_rate (numeric rpm), effective_range (m)
           [12, 'AK-74N', 1, false, true, true, 650, 650],
           [12, 'AK-47M', 1, true, true, true, 650, 650],
           [13,'HK416A1', 1, false, true, true, 850, 500],
           [12, 'AKS-74U', 1, true, true, true, 650, 300],
           [12, 'AKS-74UN', 1, true, true, true, 650, 300],
           [12, 'AKS-74UB', 1, true, true, true, 650, 300],
           [9, 'AKM', 1, false, true, true, 600, 400],
           [9, 'Vepr KM / VPO-136', 1, false, true, false, nil, 400],
           [9, 'AKMS', 1, true, true, true, 600, 400],
           [9, 'AKMN', 1, false, true, true, 600, 400],
           [12, 'AKS-74N', 1, true, true, true, 650, 650],
           [9, 'AKMSN', 1, true, true, true, 600, 400],
           [13, 'AK-101', 1, true, true, true, 650, 650],
           [13, 'AK-102', 1, true, true, true, 600, 650],
           [9, 'AK-103', 1, true, true, true, 600, 650],
           [9, 'AK-104', 1, true, true, true, 600, 650],
           [12, 'AK-105', 1, true, true, true, 600, 650],
           [10, 'FAL SA-58', 1, false, true, true, 700, 900],
           [12, 'AK-74', 1, false, true, true, 600, 650],
           [12, 'AKS-74', 1, true, true, true, 650, 650],
           [13, 'ADAR-2-15', false, true, false, nil, 650],
           [13, 'DT MDR', 1, false, true, true, 650, 500],
           [10, 'Vepr Hunter', 1, false, true, false, nil, 400],
           [6, 'AS VAL', 1, true, true, true, 900, 400],
           [10, 'RSASS', 5, false, true, false, nil, 900],
           [10,'M1A', 5, false, true, false, nil, 700],
           [11, 'SVDS', 5, true, true, false, nil, 900],
           [12, 'RPK-6', 8, true, true, true, 650, 650],
           [3, 'PP-91 Kedr', 4, true, true, true, 900, 100],
           [3, 'PP-91-01 Kedr-B', 4, true, true, true, 900, 100],
           [3, 'PP-9 Klin', 4, true, true, true, 1000, 100],
           [4, 'SIG MPX', 4, false, true, true, 850, 500],
           [4, 'MP5', 4, false, true, true, 800, 200],
           [4, 'PP-19-01 Vityaz', 4, true, true, true, 700, 200],
           [4, 'Saiga-9', 4, true, true, false, nil, 300],
           [2, 'MP7A1', 4, true, true, true, 950, 200],
           [2, 'MP7A2', 4, true, true, true, 800, 200],
           [11, 'SV-98', 3, false, true, false, nil, 1000],
           [6, 'VSS', 3, false, true, true, 900, 400],
           [10, 'DVL-10', 3, false, true, false, nil, 1000],
           [11, 'Mosin (S)', 3, false, true, false, nil, 1000],
           [11, 'Mosin (I)', 3, false, true, false, nil, 1000],
           [10, 'M700', 3, false, true, false, nil, 1000],
           [9, 'SKS', 2, false, true, false, nil, 400],
           [9, 'OP-SKS', 2, false,  true, false, nil, 400],
           [7, 'Vepr AKM / VPO-209', 2, false, true, false, nil, 300],
           [3, 'PM', 6, false, true, false, nil, 50],
           [4, 'P226R', 6, false, true, false, nil, 50],
           [3, 'PB', 6, false, true, false, nil, 50],
           [8, 'TT', 6, false, true, false, nil, 50],
           [4, 'MP-443 Grach', 6, false, true, false, nil, 50],
           [3, 'PM (t)', 6, false, true, false, nil, 50],
           [5, 'SR-1MP Gyurza', 6, false, true, false, nil, 50],
           [3, 'APS', 6, false, true, true, 750, 50],
           [4, 'GLOCK 17', 6, false, true, false, nil, 50],
           [4, 'GLOCK 18C', 6, false, true, true, 1200, 50],
           [3, 'APB', 6, false, true, true, 750, 50],
           [8, 'TT Gold', 6, false, true, false, nil, 50],
           [1, 'MP-133', 7, false, true, false, nil, 70],
           [1, 'MP-153', 7, false, true, false, nil, 70],
           [1, 'Saiga-12', 7, false, true, false, nil, 70],
           [14, 'TOZ-106', 7, false, true, false, nil, 70],
           [1, 'M870', 7, false, true, false, nil, 70],
]

weapons.each do |gun|
  Weapon.create(caliber_id: gun[0], name: gun[1], firearm_id: gun[2], foldable: gun[3], single_mode: gun[4], auto_mode: gun[5], fire_rate: gun[6], effective_range: gun[7])
end

