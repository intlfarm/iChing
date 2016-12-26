def iChing
  yin_yang_array = ["_ _", "___", "_ _", "___", "_ _", "___"]
  yin_yang_sample = yin_yang_array.shuffle

  puts "The I Ching is an ancient source of knowledge...\nProceed to understand the infinite source of wisdom...\nType 'Qi' to receive a yin or yang line hexagram..."

  user_input = gets.chomp
  if user_input.downcase == "qi"
    user_hexagram = yin_yang_sample.to_s.split(",")
      puts ""
      puts user_hexagram
  else
    puts "Better fortune next time..."
  end

  puts "\nThe hexagram is composed of two trigrams analyzed from the bottom to top...\nYin is the feminine energy denoted by the color black and represented by the broken line\nYang is the masculine energy denoted by the color white and represented by the unbroken line..."
end





p iChing
