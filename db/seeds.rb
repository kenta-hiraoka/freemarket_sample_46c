# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Brand.create!([
 { id: 1, name:'シャネル'},
 { id: 2, name: 'ナイキ' },
 { id: 3, name: 'ルイヴィトン' },
 { id: 4, name: 'シュプリーム' },
 { id: 5, name: 'アディダス' },
 { id: 6, name: 'その他' },
])

Category.create!([
 { id: 1, name:'レディース' },
 { id: 2, name: 'メンズ' },
 { id: 3, name: 'ベビー・キッズ' },
 { id: 4, name: 'インテリア・住まい・小物' },
 { id: 5, name: '本・音楽・ゲーム' },
 { id: 6, name: 'おもちゃ・ホビー・グッズ' },
 { id: 7, name:'コスメ・香水・美容' },
 { id: 8, name: '家電・スマホ・カメラ' },
 { id: 9, name: 'スポーツ・レジャー' },
 { id: 10, name: 'ハンドメイド' },
 { id: 11, name: 'チケット' },
 { id: 12, name: '自動車・オートバイ' },
 { id: 13, name: 'その他' },
])

#作成するテーブルのレコード数を指定
USER_TABLE_MAX = 100
ITEM_TABLE_MAX = 200

USER_TABLE_MAX.times do |n|
 name = Faker::Pokemon.name
 email = Faker::Internet.email
 password = "password"
 birthday =Faker::Time.between(40.years.ago, 18.years.ago, :all).to_s[0, 10]
 User.create!(id: n+1,
              nickname: name,
              email: email,
              password: password,
              birthday: birthday
             )
end

ITEM_TABLE_MAX.times do |n|
  dumy_data = {
    id:               n+1,
    name:             Faker::Pokemon.move,
    description:      "技マシーン_#{n}",
    category_id:      Random.new.rand(1..13),
    brand_id:         Random.new.rand(1..6),
    prefecture_id:    Random.new.rand(1..47),
    price:            9999999,
    user_id:          Random.new.rand(1..USER_TABLE_MAX),
    #列挙型で定義したカラム
    status:           Random.new.rand(Item.statuses.size),
    delivery_fee:     Random.new.rand(Item.dfees.size),
    delivery_date:    Random.new.rand(Item.ddates.size),
    delivery_method:  Random.new.rand(Item.demethods.size),
    size:             Random.new.rand(Item.sizes.size),
  }
  Item.create!(dumy_data)
end
