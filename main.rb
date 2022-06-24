Character = ("a".."z").to_a + ("A".."Z").to_a
Number = ("0".."9").to_a
Symbol = ['!', '#', '$', '%', '&', '(', ')', '*', '+', '~', '¥', '[', ']', '?', '<', '>', '/', '@', '_', '=']


def password(number_of_characters, number_of_numbers, number_of_symbols)
  output = ""

  number_of_characters.times do
    random_character = Character[rand(Character.length)]
    output << random_character
  end

  number_of_numbers.times do
    random_number = Number[rand(Number.length)]
    output << random_number
  end

  number_of_symbols.times do
    random_symbol = Symbol[rand(Symbol.length)]
    output << random_symbol
  end

  array = []
  array = output.split("")    #String型を配列に変換

  array_of_password_text = array.shuffle
  password_text = array_of_password_text.join         #配列をsrtingにする
  return password_text  
end

loop do
  puts "パスワードに使うアルファベットの文字数を入力"
  input_number_of_characters = gets.to_i
  puts "数字の数を入力"
  input_number_of_numbers = gets.to_i
  puts "記号の数を入力"
  input_number_of_symbols = gets.to_i

  returned_password_text = password(input_number_of_characters, input_number_of_symbols, input_number_of_numbers)
  puts "生成された暗号文:「#{returned_password_text}」"

  puts "作り直しますか？「はい => y」か「いいえ => n」を入力"
  restart = gets.chomp
  if restart == "n"
    puts "プログラムを終了しました"
    break
  end
end