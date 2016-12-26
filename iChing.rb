def i_ching
  yin_yang_array = ["_ _", "___", "_ _", "___", "_ _", "___"]
  yin_yang_sample = yin_yang_array.shuffle
  yin_line = yin_yang_array[0]
  yang_line = yin_yang_array[1]

  puts "The I Ching is an ancient source of knowledge...\nProceed to understand the infinite source of wisdom...\nType 'Qi' to receive a yin or yang line hexagram..."

  user_input = gets.chomp
  if user_input.downcase == "qi"
    user_hexagram = yin_yang_sample
      puts ""
      puts user_hexagram[0]
      puts user_hexagram[1]
      puts user_hexagram[2]
      puts user_hexagram[3]
      puts user_hexagram[4]
      puts user_hexagram[5]
  else
    puts "Better fortune next time..."
  end

  puts "\nThe hexagram is composed of two trigrams analyzed from the bottom to top...\nYin is the feminine energy denoted by the color black and represented by the broken line\nYang is the masculine energy denoted by the color white and represented by the unbroken line..."
  puts ""
  puts user_hexagram[3]
  puts user_hexagram[4]
  puts user_hexagram[5]
  puts ""

  if user_hexagram[5] == "___" && user_hexagram[4] == "___" && user_hexagram[3] == "___"
    puts "Your bottom trigram is (乾 Qián) Heaven/Sky (天 Tiān)."
  elsif user_hexagram[5] == "___" && user_hexagram[4] == "___" && user_hexagram[3] == "_ _"
    puts "Your bottom trigram is (兌 Duì) Lake/Marsh (澤(泽) Zé)."
  elsif user_hexagram[5] == "___" && user_hexagram[4] == "_ _" && user_hexagram[3] == "___"
    puts "Your bottom trigram is (離 Lí) Fire (火 Huǒ)."
  elsif user_hexagram[5] == "___" && user_hexagram[4] == "_ _" && user_hexagram[3] == "_ _"
    puts "Your bottom trigram is (震 Zhèn) Thunder (雷 Léi)."
  elsif user_hexagram[5] == "_ _" && user_hexagram[4] == "___" && user_hexagram[3] == "___"
    puts "Your bottom trigram is (巽 Xùn) Wind (風(风) Fēng)."
  elsif user_hexagram[5] == "_ _" && user_hexagram[4] == "___" && user_hexagram[3] == "_ _"
    puts "Your bottom trigram is (坎 Kǎn) Water (水 Shuǐ)."
  elsif user_hexagram[5] == "_ _" && user_hexagram[4] == "_ _" && user_hexagram[3] == "___"
    puts "Your bottom trigram is (艮 Gèn) Mountain (山 Shān)."
  elsif user_hexagram[5] == "_ _" && user_hexagram[4] == "_ _" && user_hexagram[3] == "_ _"
    puts "Your bottom trigram is (坤 Kūn) Earth (地 Dì)."
  end

  puts ""
  puts user_hexagram[0]
  puts user_hexagram[1]
  puts user_hexagram[2]
  puts ""

  if user_hexagram[2] == "___" && user_hexagram[1] == "___" && user_hexagram[0] == "___"
    puts "Your top trigram is (乾 Qián) Heaven/Sky (天 Tiān)."
  elsif user_hexagram[2] == "___" && user_hexagram[1] == "___" && user_hexagram[0] == "_ _"
    puts "Your top trigram is (兌 Duì) Lake/Marsh (澤(泽) Zé)."
  elsif user_hexagram[2] == "___" && user_hexagram[1] == "_ _" && user_hexagram[0] == "___"
    puts "Your top trigram is (離 Lí) Fire (火 Huǒ)."
  elsif user_hexagram[2] == "___" && user_hexagram[1] == "_ _" && user_hexagram[0] == "_ _"
    puts "Your top trigram is (震 Zhèn) Thunder (雷 Léi)."
  elsif user_hexagram[2] == "_ _" && user_hexagram[1] == "___" && user_hexagram[0] == "___"
    puts "Your top trigram is (巽 Xùn) Wind (風(风) Fēng)."
  elsif user_hexagram[2] == "_ _" && user_hexagram[1] == "___" && user_hexagram[0] == "_ _"
    puts "Your top trigram is (坎 Kǎn) Water (水 Shuǐ)."
  elsif user_hexagram[2] == "_ _" && user_hexagram[1] == "_ _" && user_hexagram[0] == "___"
    puts "Your top trigram is (艮 Gèn) Mountain (山 Shān)."
  elsif user_hexagram[2] == "_ _" && user_hexagram[1] == "_ _" && user_hexagram[0] == "_ _"
    puts "Your top trigram is (坤 Kūn) Earth (地 Dì)."
  end


end


def i_ching_hexagram
  print i_ching
end

p i_ching_hexagram
