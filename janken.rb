def attimuite_win
 puts "-----------------------"
 puts "あっち向いて〜"
 puts "0(上)1(下)2(左)3(右)"
 
 user_hand2 = gets.to_i
 enemy_hand2 =rand(4)
 
 directions = ["上","下","左","右"]

 puts "ホイ！"
 puts "-----------------------"

 puts "あなた：#{directions[user_hand2]}"
 puts "相手：#{directions[enemy_hand2]}"
 
 puts "-----------------------"

 if user_hand2 == enemy_hand2
   puts "あなたの勝ちです！"
 else
  janken
 end 
end

def attimuite_lose
 puts "-----------------------"
 puts "あっち向いて〜"
 puts "0(上)1(下)2(左)3(右)"
 
 user_hand2 = gets.to_i
 enemy_hand2 =rand(4)
 
 directions = ["上","下","左","右"]

 puts "ホイ！"
 puts "-----------------------"

 puts "あなた：#{directions[user_hand2]}"
 puts "相手：#{directions[enemy_hand2]}"
 
 puts "-----------------------"

 if user_hand2 == enemy_hand2
   puts "あなたの負けです・・・"
 else
  janken
 end 
end

def janken
 puts "じゃんけん・・・"
 puts "[0]グー[1]チョキ[2]パー[3]戦わない"

 user_hand = gets.to_i
 enemy_hand =rand(3)
 
 hands = ["グー","チョキ","パー"]

 puts "ホイ！"
 puts "-----------------------"

 puts "あなた：#{hands[user_hand]}"
 puts "相手：#{hands[enemy_hand]}"
 
if user_hand == enemy_hand
  puts "-----------------------"
  puts "あいこで・・・"
  janken
elsif user_hand == 0 && enemy_hand == 1 || user_hand == 1 && enemy_hand == 2 || user_hand == 2 && enemy_hand == 0
  attimuite_win
elsif user_hand == 0 && enemy_hand == 2 || user_hand == 1 && enemy_hand == 0 || user_hand == 2 && enemy_hand == 1
  attimuite_lose
elsif user_hand == 3
  puts "戦いを終了しました"
else
  puts "数字を入力してください"
  puts "-----------------------"
  janken
end

 puts "-----------------------"
end
janken

