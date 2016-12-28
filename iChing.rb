class I_ching
  def hexagram_generator
    yin_yang_array = ["__  __", "______", "__  __", "______", "__  __", "______"]
    yin_yang_sample = yin_yang_array.shuffle
    @@user_hexagram = yin_yang_sample

    @@lower_sky       = @@user_hexagram[5] == "______" && @@user_hexagram[4] == "______" && @@user_hexagram[3] == "______"
    @@lower_lake      = @@user_hexagram[5] == "______" && @@user_hexagram[4] == "______" && @@user_hexagram[3] == "__  __"
    @@lower_fire      = @@user_hexagram[5] == "______" && @@user_hexagram[4] == "__  __" && @@user_hexagram[3] == "______"
    @@lower_thunder   = @@user_hexagram[5] == "______" && @@user_hexagram[4] == "__  __" && @@user_hexagram[3] == "__  __"
    @@lower_wind      = @@user_hexagram[5] == "__  __" && @@user_hexagram[4] == "______" && @@user_hexagram[3] == "______"
    @@lower_water     = @@user_hexagram[5] == "__  __" && @@user_hexagram[4] == "______" && @@user_hexagram[3] == "__  __"
    @@lower_mountain  = @@user_hexagram[5] == "__  __" && @@user_hexagram[4] == "__  __" && @@user_hexagram[3] == "______"
    @@lower_earth     = @@user_hexagram[5] == "__  __" && @@user_hexagram[4] == "__  __" && @@user_hexagram[3] == "__  __"

    @@top_sky         = @@user_hexagram[2] == "______" && @@user_hexagram[1] == "______" && @@user_hexagram[0] == "______"
    @@top_lake        = @@user_hexagram[2] == "______" && @@user_hexagram[1] == "______" && @@user_hexagram[0] == "__  __"
    @@top_fire        = @@user_hexagram[2] == "______" && @@user_hexagram[1] == "__  __" && @@user_hexagram[0] == "______"
    @@top_thunder     = @@user_hexagram[2] == "______" && @@user_hexagram[1] == "__  __" && @@user_hexagram[0] == "__  __"
    @@top_wind        = @@user_hexagram[2] == "__  __" && @@user_hexagram[1] == "______" && @@user_hexagram[0] == "______"
    @@top_water       = @@user_hexagram[2] == "__  __" && @@user_hexagram[1] == "______" && @@user_hexagram[0] == "__  __"
    @@top_mountain    = @@user_hexagram[2] == "__  __" && @@user_hexagram[1] == "__  __" && @@user_hexagram[0] == "______"
    @@top_earth       = @@user_hexagram[2] == "__  __" && @@user_hexagram[1] == "__  __" && @@user_hexagram[0] == "__  __"

    puts "The I Ching is an ancient source of knowledge...\nProceed to understand the infinite source of wisdom...\nType 'Qi' to receive a yin or yang line hexagram..."

    user_input = gets.chomp

    if user_input.downcase == "qi"
      puts ""
      puts @@user_hexagram[0]
      puts @@user_hexagram[1]
      puts @@user_hexagram[2]
      puts @@user_hexagram[3]
      puts @@user_hexagram[4]
      puts @@user_hexagram[5]
    else
      puts "The Way follows only itself..."
      exit
    end
  end

    def trigram

    puts "\nThe hexagram is composed of two trigrams analyzed from the bottom to top...\nYin is the feminine energy denoted by the color black and represented by the broken line\nYang is the masculine energy denoted by the color white and represented by the unbroken line..."
    puts ""
    puts @@user_hexagram[3]
    puts @@user_hexagram[4]
    puts @@user_hexagram[5]
    puts ""

    if    @@lower_sky
      puts "Your bottom trigram is (乾 Qián) Heaven/Sky (天 Tiān)."
    elsif @@lower_lake
      puts "Your bottom trigram is (兌 Duì) Lake/Marsh (澤(泽) Zé)."
    elsif @@lower_fire
      puts "Your bottom trigram is (離 Lí) Fire (火 Huǒ)."
    elsif @@lower_thunder
      puts "Your bottom trigram is (震 Zhèn) Thunder (雷 Léi)."
    elsif @@lower_wind
      puts "Your bottom trigram is (巽 Xùn) Wind (風(风) Fēng)."
    elsif @@lower_water
      puts "Your bottom trigram is (坎 Kǎn) Water (水 Shuǐ)."
    elsif @@lower_mountain
      puts "Your bottom trigram is (艮 Gèn) Mountain (山 Shān)."
    elsif @@lower_earth
      puts "Your bottom trigram is (坤 Kūn) Earth (地 Dì)."
    end

    puts ""
    puts @@user_hexagram[0]
    puts @@user_hexagram[1]
    puts @@user_hexagram[2]
    puts ""

    if    @@top_sky
      puts "Your top trigram is (乾 Qián) Heaven/Sky (天 Tiān)."
    elsif @@top_lake
      puts "Your top trigram is (兌 Duì) Lake/Marsh (澤(泽) Zé)."
    elsif @@top_fire
      puts "Your top trigram is (離 Lí) Fire (火 Huǒ)."
    elsif @@top_thunder
      puts "Your top trigram is (震 Zhèn) Thunder (雷 Léi)."
    elsif @@top_wind
      puts "Your top trigram is (巽 Xùn) Wind (風(风) Fēng)."
    elsif @@top_water
      puts "Your top trigram is (坎 Kǎn) Water (水 Shuǐ)."
    elsif @@top_mountain
      puts "Your top trigram is (艮 Gèn) Mountain (山 Shān)."
    elsif @@top_earth
      puts "Your top trigram is (坤 Kūn) Earth (地 Dì)."
    end
  end

  def hexagram
    puts ""
    puts "These trigrams combined form one of sixty-four hexagrams within the I Ching..."
    puts ""
    puts @@user_hexagram[0]
    puts @@user_hexagram[1]
    puts @@user_hexagram[2]
    puts @@user_hexagram[3]
    puts @@user_hexagram[4]
    puts @@user_hexagram[5]

    @@hexagram_one_creative = @@lower_sky && @@top_sky
    @@hexagram_two_receptive = @@lower_earth && @@top_earth
    @@hexagram_three_difficulty = @@lower_thunder && @@top_fire
    @@hexagram_four_youthful_folly = @@lower_water && @@top_mountain
    @@hexagram_five_waiting = @@lower_sky && @@top_water
    @@hexagram_six_conflict = @@lower_water && @@top_sky
    @@hexagram_seven_army = @@lower_water && @@top_earth
    @@hexagram_eight_holding_together = @@lower_earth && @@top_water
    @@hexagram_nine_power_of_the_small = @@lower_sky && @@top_wind
    @@hexagram_ten_treading = @@lower_lake && @@top_sky
    @@hexagram_eleven_peace = @@lower_sky && @@top_earth
    @@hexagram_twelve_stagnation = @@lower_earth && @@top_sky
    @@hexagram_thirteen_fellowship_with_men = @@lower_fire && @@top_sky
    @@hexagram_fourteen_possession = @@lower_sky && @@top_fire
    @@hexagram_fifteen_modesty = @@lower_mountain && @@top_earth
    @@hexagram_sixteen_enthusiasm = @@lower_earth && @@top_thunder
    @@hexagram_seventeen_following = @@lower_thunder && @@top_lake
    @@hexagram_eighteen_decay = @@lower_wind && @@top_mountain
    @@hexagram_nineteen_approach = @@lower_lake && @@top_earth
    @@hexagram_twenty_contemplation = @@lower_earth && @@top_wind
    @@hexagram_twenty_one_biting_through = @@lower_thunder && @@top_fire
    @@hexagram_twenty_two_grace = @@lower_fire && @@top_mountain
    @@hexagram_twenty_three_splitting_apart = @@lower_earth && @@top_mountain
    @@hexagram_twenty_four_return = @@lower_thunder && @@top_earth
    @@hexagram_twenty_five_innocence = @@lower_thunder && @@top_sky
    @@hexagram_twenty_six_power_of_the_great = @@lower_sky && @@top_mountain
    @@hexagram_twenty_seven_providing_nourishment = @@lower_thunder && @@top_mountain
    @@hexagram_twenty_eight_preponderance_of_great = @@lower_wind && @@top_lake
    @@hexagram_twenty_nine_abysmal = @@lower_water && @@top_water
    @@hexagram_thirty_clinging = @@lower_fire && @@top_fire
    @@hexagram_thirty_one_influence = @@lower_mountain && @@top_lake
    @@hexagram_thirty_two_duration = @@lower_wind && @@top_thunder
    @@hexagram_thirty_three_retreat = @@lower_mountain && @@top_sky
    @@hexagram_thirty_four_power_of_great = @@lower_sky && @@top_thunder
    @@hexagram_thirty_five_progress = @@lower_earth && @@top_fire
    @@hexagram_thirty_six_darkening_of_light = @@lower_fire && @@top_earth
    @@hexagram_thirty_seven_the_clan = @@lower_fire && @@top_wind
    @@hexagram_thirty_eight_opposition = @@lower_lake && @@top_fire
    @@hexagram_thirty_nine_obstruction = @@lower_mountain && @@top_water
    @@hexagram_forty_deliverance = @@lower_water && @@top_thunder
    @@hexagram_forty_one_decrease = @@lower_lake && @@top_mountain
    @@hexagram_forty_two_increase = @@lower_thunder && @@top_wind
    @@hexagram_forty_three_break_through = @@lower_sky && @@top_lake
    @@hexagram_forty_four_coming_to_meet = @@lower_wind && @@top_sky
    @@hexagram_forty_five_gathering_together = @@lower_earth && @@top_lake
    @@hexagram_forty_six_pushing_upward = @@lower_wind && @@top_earth
    @@hexagram_forty_seven_oppression = @@lower_water && @@top_lake
    @@hexagram_forty_eight_the_well = @@lower_wind && @@top_water
    @@hexagram_forty_nine_revolution = @@lower_fire && @@top_lake
    @@hexagram_fifty_the_cauldron = @@lower_wind && @@top_fire
    @@hexagram_fifty_one_the_arousing = @@lower_thunder && @@top_thunder
    @@hexagram_fifty_two_keeping_still_mountain = @@lower_mountain && @@top_mountain
    @@hexagram_fifty_three_development = @@lower_mountain && @@top_wind
    @@hexagram_fifty_four_the_marrying_maiden = @@lower_lake && @@top_thunder
    @@hexagram_fifty_five_abundance = @@lower_fire && @@top_thunder
    @@hexagram_fifty_six_the_wanderer = @@lower_mountain && @@top_fire
    @@hexagram_fifty_seven_the_penetrating_wind = @@lower_wind && @@top_wind
    @@hexagram_fifty_eight_the_joyous_lake = @@lower_lake && @@top_lake
    @@hexagram_fifty_nine_dispersion = @@lower_fire && @@top_wind
    @@hexagram_sixty_limitation = @@lower_lake && @@top_water
    @@hexagram_sixty_one_inner_truth = @@lower_lake && @@top_wind
    @@hexagram_sixty_two_preponderance_of_the_small = @@lower_mountain && @@top_thunder
    @@hexagram_sixty_three_after_completion = @@lower_fire && @@top_water
    @@hexagram_sixty_four_before_completion = @@lower_water && @@top_fire

  end


  def hexagram_explained

    puts ""
    if @@hexagram_one_creative
      puts "Your hexagram is one: The Creative..."
    elsif @@hexagram_two_receptive
      puts "Your hexagram is two: The Receptive..."
    elsif @@hexagram_three_difficulty
      puts "Your hexagram is three: Difficulty at the Beginning..."
    elsif @@hexagram_four_youthful_folly
      puts "Your hexagram is four: Youthful Folly..."
    elsif @@hexagram_five_waiting
      puts "Your hexagram is five: Waiting (Nourishment)..."
    elsif @@hexagram_six_conflict
      puts "Your hexagram is six: Conflict..."
    elsif @@hexagram_seven_army
      puts "Your hexagram is seven: The Army..."
    elsif @@hexagram_eight_holding_together
      puts "Your hexagram is eight: Holding Together (union)..."
    elsif @@hexagram_nine_power_of_the_small
      puts "Your hexagram is nine: The Taming Power of the Small..."
    elsif @@hexagram_ten_treading
      puts "Your hexagram is ten: Treading (conduct)..."
    elsif @@hexagram_eleven_peace
      puts "Your hexagram is eleven: Peace..."
    elsif @@hexagram_twelve_stagnation
      puts "Your hexagram is twelve: Standstill (Stagnation)..."
    elsif @@hexagram_thirteen_fellowship_with_men
      puts "Your hexagram is thirteen: Fellowship with Men..."
    elsif @@hexagram_fourteen_possession
      puts "Your hexagram is fourteen: Possession in Great Measure..."
    elsif @@hexagram_fifteen_modesty
      puts "Your hexagram is fifteen: Modesty..."
    elsif @@hexagram_sixteen_enthusiasm
      puts "Your hexagram is sixteen: Enthusiasm..."
    elsif @@hexagram_seventeen_following
      puts "Your hexagram is seventeen: Following..."
    elsif @@hexagram_eighteen_decay
      puts "Your hexagram is eighteen: Work on what has been spoiled (Decay)..."
    elsif @@hexagram_nineteen_approach
      puts "Your hexagram is nineteen: Approach..."
    elsif @@hexagram_twenty_contemplation
      puts "Your hexagram is twenty: Contemplation (View)..."
    elsif @@hexagram_twenty_one_biting_through
      puts "Your hexagram is twenty one: Biting Through..."
    elsif @@hexagram_twenty_two_grace
      puts "Your hexagram is twenty two: Grace..."
    elsif @@hexagram_twenty_three_splitting_apart
      puts "Your hexagram is twenty three: Splitting Apart..."
    elsif @@hexagram_twenty_four_return
      puts "Your hexagram is twenty four: Return (The Turning Point)..."
    elsif @@hexagram_twenty_five_innocence
      puts "Your hexagram is twenty five: Innocence (The Unexpected)..."
    elsif @@hexagram_twenty_six_power_of_the_great
      puts "Your hexagram is twenty six: The Taming Power of the Great..."
    elsif @@hexagram_twenty_seven_providing_nourishment
      puts "Your hexagram is twenty seven: Corners of the Mouth (Providing Nourishment)..."
    elsif @@hexagram_twenty_eight_preponderance_of_great
      puts "Your hexagram is twenty eight: Preponderance of the Great..."
    elsif @@hexagram_twenty_nine_abysmal
      puts "Your hexagram is twenty nine: The Abysmal (Water)..."
    elsif @@hexagram_thirty_clinging
      puts "Your hexagram is thirty: The Clinging, Fire..."
    elsif @@hexagram_thirty_one_influence
      puts "Your hexagram is thirty one: Influence (Wooing)..."
    elsif @@hexagram_thirty_two_duration
      puts "Your hexagram is thirty two: Duration..."
    elsif @@hexagram_thirty_three_retreat
      puts "Your hexagram is thirty three: Retreat..."
    elsif @@hexagram_thirty_four_power_of_great
      puts "Your hexagram is thirty four: The Power of the Great..."
    elsif @@hexagram_thirty_five_progress
      puts "Your hexagram is thirty five: Progress..."
    elsif @@hexagram_thirty_six_darkening_of_light
      puts "Your hexagram is thirty six: Darkening of the light..."
    elsif @@hexagram_thirty_seven_the_clan
      puts "Your hexagram is thirty seven: The Family (The Clan)"
    elsif @@hexagram_thirty_eight_opposition
      puts "Your hexagram is thirty eight: Opposition..."
    elsif @@hexagram_thirty_nine_obstruction
      puts "Your hexagram is thirty nine: Obstruction..."
    elsif @@hexagram_forty_deliverance
      puts "Your hexagram is forty: Deliverance..."
    elsif @@hexagram_forty_one_decrease
      puts "Your hexagram is forty one: Decrease..."
    elsif @@hexagram_forty_two_increase
      puts "Your hexagram is forty two: Increase..."
    elsif @@hexagram_forty_three_break_through
      puts "Your hexagram is forty three: Break-through (Resoluteness)..."
    elsif @@hexagram_forty_four_coming_to_meet
      puts "Your hexagram is forty four: Coming to Meet..."
    elsif @@hexagram_forty_five_gathering_together
      puts "Your hexagram is forty five: Gathering Together (Massing)..."
    elsif @@hexagram_forty_six_pushing_upward
      puts "Your hexagram is forty six: Pushing Upward..."
    elsif @@hexagram_forty_seven_oppression
      puts "Your hexagram is forty seven: Oppression (Exhaustion)..."
    elsif @@hexagram_forty_eight_the_well
      puts "Your hexagram is forty eight: The Well..."
    elsif @@hexagram_forty_nine_revolution
      puts "Your hexagram is forty nine: Revolution (Molting)..."
    elsif @@hexagram_fifty_the_cauldron
      puts "Your hexagram is fifty: The Cauldron..."
    elsif @@hexagram_fifty_one_the_arousing
      puts "Your hexagram is fifty one: The Arousing (Shock, Thunder)..."
    elsif @@hexagram_fifty_two_keeping_still_mountain
      puts "Your hexagram is fifty two: Keeping Still, Mountain..."
    elsif @@hexagram_fifty_three_development
      puts "Your hexagram is fifty three: Development (Gradual Progress)..."
    elsif @@hexagram_fifty_four_the_marrying_maiden
      puts "Your hexagram is fifty four: The Marrying Maiden..."
    elsif @@hexagram_fifty_five_abundance
      puts "Your hexagram is fifty five: Abundance (Fullness)..."
    elsif @@hexagram_fifty_six_the_wanderer
      puts "Your hexagram is fifty six: The Wanderer..."
    elsif @@hexagram_fifty_seven_the_penetrating_wind
      puts "Your hexagram is fifty seven: The Gentle (The Penetrating, Wind)..."
    elsif @@hexagram_fifty_eight_the_joyous_lake
      puts "Your hexagram is fifty eight: The Joyous, Lake..."
    elsif @@hexagram_fifty_nine_dispersion
      puts "Your hexagram is fifty nine: Dispersion (Dissolution)..."
    elsif @@hexagram_sixty_limitation
      puts "Your hexagram is sixty: Limitation..."
    elsif @@hexagram_sixty_one_inner_truth
      puts "Your hexagram is sixty one: Inner Truth..."
    elsif @@hexagram_sixty_two_preponderance_of_the_small
      puts "Your hexagram is sixty two: Preponderance of the Small..."
    elsif @@hexagram_sixty_three_after_completion
      puts "Your hexagram is sixty three: After Completion..."
    elsif @@hexagram_sixty_four_before_completion
      puts "Your hexagram is sixty four: Before Completion..."
    end
  end

  user_one = I_ching.new
  user_one.hexagram_generator
  user_one.trigram
  user_one.hexagram
  user_one.hexagram_explained
  puts "\nHexagram names sourced from James Legge I Ching Hexagram Translation (http://www.ichingfortune.com/legge_hexagrams.php)"

end


