# 課題の回答は このファイル をご利用下さい。
# 回答の出力を確認される際は，「ruby main.rb」をターミナルから実行して下さい。

def q1
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  # 1stA: names.push("斎藤")
  names << "斎藤"
  puts names

end

def q2
  array1 = ["dog", "cat", "fish"]
  array2 = ["bird", "bat", "tiger"]

  # 以下に回答を記載
  # array1.push(array2)
  # array1.flatten!
  # p array1

p array1 + array2

end

def q3
  numbers = [1, 5, 8, 10, 2, 3, 2, 3, 3, 1, 4, 5, 9]

  # 以下に回答を記載
  puts numbers.count(3)

end


def q4
  sports = ["サッカー", "フットサル", nil, "野球", "バスケ", nil, "バレー"]

  # 以下に回答を記載
  # 1stA : sports.delete(nil)
  sports.compact!
  # 以下は変更しないで下さい
  p sports
end

def q5
  array1 = []
  array2 = [1, 5, 8, 10]

  # 以下に回答を記載
  # puts array1.size == 0
  # puts array2.size == 0
  puts array1.empty?
  puts array2.empty?
  
end

def q6
  numbers1 = [1, 2, 3, 4, 5]

  # 以下に回答を記載
  # numbers1.each do |number|
  #   p "#{number}0"
  # end

  numbers2 = numbers1.map{
    |number| number * 10
  }

  p numbers2
 
end

def q7
  array = ["1", "2", "3", "4", "5"]

  # 以下に回答を記載
  # 1stA : array.map!{|number| number.to_i}
  array.map!(&:to_i)
  # 以下は変更しないで下さい
  p array
end

def q8
  programming_languages = %w(ruby php python javascript)

  # 以下に回答を記載
  programming_languages.map(&:capitalize!)
  upper_case_programming_languages = programming_languages.map(&:upcase)

  # 以下は変更しないで下さい
  p programming_languages
  p upper_case_programming_languages
end

def q9
  names = ["田中", "佐藤", "佐々木", "高橋"]

  # 以下に回答を記載
  names.each.with_index(1) do |name, i|
    puts "会員No.#{i}#{name}さん"
  end

end

def q10
  foods = %w(いか たこ うに しゃけ うにぎり うに軍艦 うに丼)

  # 以下に回答を記載
  foods.each do |food|
    if food.include?("うに")
      puts "好物です"
    else
      puts "まぁまぁ好きです"
    end
  end
end

def q11
  sports = ["サッカー", "バスケ", "野球", ["フットサル", "野球"], "水泳", "ハンドボール", ["卓球", "サッカー", "ボルダリング"]]

  # 以下に回答を記載
  # sports.each.with_index(1) do |sport, i|
  # puts "No#{i} #{sport}"
  # p sports.uniq
  #   puts "ユーザーの趣味一覧"
  # sport1 = sports.flatten
  # sport1.uniq.each.with_index(1) do |sport, i|
  #   puts "No#{i} #{sport}"

    puts "ユーザーの趣味一覧"
    sports.flatten!.uniq!.each.with_index(1) do |sport, i|
      puts "No#{i} #{sport}"

  end 
end

def q12
  data = { user: { name: "satou", age: 33 } }

  # 以下に回答を記載
  puts data[:user][:name]

end

def q13
  user_data = { name: "神里", age: 31, address: "埼玉" }
  update_data = { age: 32, address: "沖縄" }

  # 以下に回答を記載
  user_data.merge!(update_data)
  puts user_data

end

def q14
  data = { name: "satou", age: 33, address: "saitama", hobby: "soccer", email: "hoge@fuga.com" }

  # 以下に回答を記載
  # key => keys
  keys = data.keys
  p keys
end

def q15
  data1 = { name: "saitou", hobby: "soccer", age: 33, role: "admin" }
  data2 = { name: "yamada", hobby: "baseball", role: "normal" }

  # 以下に回答を記載
  # def check_include_age
  #   if include?(:age)
  #     puts "OK"
  #   else
  #     puts "NG"
  #   end
  def check_include_age
    include?(:age) ? "OK" : "NG"
  end
  puts data1.check_include_age
  puts data2.check_include_age
end

def q16
  users = [
    { name: "satou", age: 22 },
    { name: "yamada", age: 12 },
    { name: "takahashi", age: 32 },
    { name: "nakamura", age: 41 }
  ]

  # 以下に回答を記載
  # 1st anser |value| 
  users.each do |user|
    puts "私の名前は#{user[:name]}です。年齢は#{user[:age]}歳です。"
  end

end

class UserQ17
  # 以下に回答を記載

  def initialize(name:, age:, gender:)
    @name = name
    @age = age
    @gender = gender
  end

  def name
    @name
  end

  def age
    @age
  end

  def gender
    @gender
  end

  def info
    #  puts "名前：#{self.name}"
    #  puts "年齢：#{self.age}"
    #  puts "性別：#{self.gender}"

    puts <<~TEXT
    名前：#{@name}
    年齢：#{@age}
    性別：#{@gender}
    TEXT

  end
end

def q17
  # ここは変更しないで下さい（ユーザー情報は変更していただいてOKです）
  user1 = UserQ17.new(name: "神里", age: 32, gender: "男")
  user2 = UserQ17.new(name: "あじー", age: 32, gender: "男")

  user1.info
  puts "-------------"
  user2.info
end

class UserQ18
  # 以下に回答を記載
#   attr_accessor :name
#   attr_accessor :age

# def initialize(name:, age:)
#   self.name = name
#   self.age = age
# end

# def introduce
#     if self.age >= 20 
#       puts "こんにちは，#{self.name}と申します。宜しくお願いいたします。" 
#     else  
#       puts "はいさいまいど〜，#{self.name}です！！！"
#     end
#end


end

def q18
  # ここは変更しないで下さい
  user1 = UserQ18.new(name: "あじー", age: 32)
  user2 = UserQ18.new(name: "ゆたぼん", age: 10)

  puts user1.introduce
  puts user2.introduce
end

class Item
  # 以下を修正して下さい
  # attr_accessor :name

  # def initialize(name:)
  #   @name = name
  # end
  # def name
  #   puts @name
  # end
end

def q19
  # ここは変更しないで下さい
  book = Item.new(name: "ゼロ秒思考")
  puts book.name
end

class UserQ20
  # 以下に回答を記載

end

class Zoo
  # 以下に回答を記載

end


def q20
  # ここは変更しないで下さい（動物園・ユーザー情報は変更していただいてOKです）
  zoo = Zoo.new(name: "旭山動物園", entry_fee: { infant: 0, children: 400, adult: 800, senior: 500 })

  users = [
    UserQ20.new(name: "たま", age: 3),
    UserQ20.new(name: "ゆたぼん", age: 10),
    UserQ20.new(name: "あじー", age: 32),
    UserQ20.new(name: "ぎん", age: 108)
  ]

  users.each do |user|
    zoo.info_entry_fee(user)
  end
end