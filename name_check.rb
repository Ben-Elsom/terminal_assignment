def ask_number
name = "jessica"
flirt_score = 50
    if flirt_score >= 50
        puts "Yeah ok, I'll give you my number. One final question though. \nWhat's my name?"
        name_guess = gets.chomp.downcase
        if name_guess == name
            puts "'Ok, yeah you can have my number. Here you go' *give number*"
            puts "YOU WIN!"
            exit
        else 
            puts "urgh I can't believe I was going to give you my number. Get lost"
            puts "YOU LOSE!"
            exit
        end
        puts "Ha! as if. Get lost"
        puts "YOU LOSE!"
        exit
    end
end

ask_number