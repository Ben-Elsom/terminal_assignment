
require "tty-prompt"
require 'colorized_string' 
require 'colorize'

prompt = TTY::Prompt.new

print "\e[2J\e[f"

girl_names = ["Olivia", "Emma", "Ava", "Sophia", "Isabella", "Charlotte", "Amelia", "Mia", "Chelsey", "Evelyn"]
boy_names = ["Liam", "Noah", "Oliver", "William", "James", "Benjamin", "Lucas"]
unisex_names = ["Cameron", "Billie", "Kit", "Kai", "Riley", "Baily", "Charlie", "Drew"]
traits = ["Naruto", "Sport/exercise", "Cats", "Dogs", "Partying", "Outer-Space", "Cooking", "Rick and Morty", "Video games"]






difficulty = "Medium"

if ARGV[0]
    difficulty = ARGV[0].capitalize
end


if difficulty == "Easy"
    num_of_attributes = 30
elsif difficulty == "Medium"
    num_of_attributes = 20
elsif difficulty == "Hard"
    num_of_attributes = 10
end
ARGV.clear
puts "Please enter your name:"
user_name = gets.chomp.capitalize

gender = prompt.select("Ok #{user_name}, Which gender would you like to meet this evening", ["I would like to meet a boy", "I would like to meet a girl", "Undefined"])


case gender
    when "I would like to meet a boy"
        date_name = boy_names.sample
    when "I would like to meet a girl" 
        date_name = girl_names.sample
    when "Undefined"
        date_name = unisex_names.sample
end

print "\e[2J\e[f"



class Person
    attr_accessor :flirt_score, :strength, :intelligence, :charisma
    attr_reader :name, :trait, :questions

    def initialize(gender, date_name, traits)
        @gender = gender
        @name = date_name
        @trait = traits
        @flirt_score = 5
        @strength = 0
        @intelligence = 0
        @charisma = 0
        @questions = {
                prompt: ["'Do you come here often?'", 
                    "'Do you work out?'",
                    "'What do you do for a living?'",
                    "'Do you watch anime?'",
                    "'Do you do any sports?'",
                    "'What’s your favourite animal?'",
                    "'What do you like to do in your free time?'",
                    "'Who is the most fascinating person you've ever met?'",
                    "'What music do you listen to?'",
                    "'What would be your dream job?'",
                    "'What would you do if you had enough money to not need a job?'",
                    "'Among your friends, what are you best know for?'",
                    "'What is an accomplishment that you are really proud of?'",
                    "'What kind of people are your people?''"
                    
                    
                ],
                A: {
                    output: ["'All the time, I love to party'", 
                            "'All the time, I love exercise'",
                            "'I’m a student at Coder academy'", 
                            "'Eww no!'", 
                            "'Yeah I like a lot of sports'",
                            "'I love cats!'",
                            "'Depends who I'm with'",
                            "'Donald Trump, great guy'",
                            "'Jake Paul's music",
                            "'Software developer'",
                            "'Charity work'",
                            "'Dating beautiful partners'",
                            "'I don't have any'",
                            "'Who needs other people when I have you'"




                        ],
                    trait: ["Partying", "Sport/exercise","~","Naruto","Sport/exercise", "Cats", "~", "~", "~", "~", "~", "~", "~", "~"],
                    score: [3, 3, 5, -1, 3, 3, 7, -3, -3, 3, 3, 5, -3, 10],
                    ht_score: [10, 5, 0, -3, 5, 10, 0, 0, 0, 0, 0, 0, 0, 0],
                    failed_score: [0, 0, -1, 0, 0, 0, -3, 0, 0, -3, 0, -3, 0, -5],
                    response: ["'Oh cool, It's nice here'", "'I can tell'", "'Wow, you must be really smart'", "'Wow that was dramatic'", "'Oh cool, sports are pretty cool'", "yeah they’re pretty cute", "'hehehe :)'", "'Oh, You like Trump? Ok...'", "'ah ok, Not really my type pf music'", "'nerd :P, nah that’s awesome'", "''That's so kind", "'hehehe'", "'Ok nevermind then'", "'hehehe you're such a flirt'"],
                    has_trait_response: ["'Omg I love to party too! that’s so cool'", "that’s awesome! I love exercise too!", "", "Oh Damn ok, well I love it...", "'that’s awesome I love sports too'", "'I love cats too! You have to come over and meet my cats some time'", "", "","", "", "", "", "", ""],
                    failed_response: ["","", "'As if, only smart people go there'","","", "","urgh cringe", "", "", "As if you could ever", "", "'Urgh smooth dude'", "", "'So you just don't have friends?'"],
                    req_strength: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                    req_intelligence: [0, 0, 5, 0, 0, 0 ,0, 0, 0, 5, 0, 0, 0, 0],
                    req_charisma: [0, 0, 0, 0, 0 ,0 ,7 , 0, 0, 0, 0, 7, 0, 10],
                    requires: ["", "", "(Requires 5 Intelligence)", "", "", "",  "(Requires 7 Charisma)", "", "", "(Requires 5 Intelligence)", "", "(Requires 7 Charisma)", "", "(Requires 10 Charisma)"]
                    },
                    
                B:  {
                    output: ["'Nah'",
                            "'No'",
                            "'I'm a hedgefund manager'",
                            "'SASSKUUUEEEE'",
                            "'Does it look like am the type to like sports?'",
                            "'I love dogs!'",
                            "'I like to play video games'",
                            "'You'",
                            "'I hate all music'",
                            "'Astronaut'",
                            "'Play video games",
                            "'Capable'",
                            "'I built a robot that passes butter'",
                            "'Dogs'"
                        
                        ],
                    trait: ["~", "Sports/Exercise", "~", "Naruto", "Sports/Exercise", "Dogs", "Video games", "~", "~", "Outer-space", "Video games", "~", "Rick and Morty", "Dogs"],
                    score: [-3, -1, -7, -3, -3, 3, 1, 10, -3, 5, 3, 5, 5, 3],
                    ht_score: [0, -3, 0, 10, -3, 10, 5, 0, 0, 10, 5, 0, 10, 10],
                    failed_score: [0, 0, -5, 0, 0, 0, 0, -5, 0, 0, 0, -1, -3, 0],
                    response: ["'Oh ok, well it's nice here'","'Ok then'", "Wow that's super impressive", "'What the hell dude?'", "'nevermind then'", "'Yeah they're pretty cute'", "'oh that's pretty cool, I used to play them as a kid'", "'hehehe'", "'oh...  nevermind then'", "'Hell yeah that would be cool'", "'I can vibe with that video games are cool'", "Nice, who doesn't love a capable person'", "'Wow that is insanely inpressive'", "'I can vibe with that'" ],
                    has_trait_response: ["", "", "", "'NARRRUUTOOOO'", "", "I love dogs too! You have to come over and meet my dogs some time", "'Oh hell yeah I love video games, we'll have to trade pokemod :P'", "","", "'OMG That’s my dream job as well! It would be SOO cool'", "Hell yeah, love me some video games", "", "'Lmao is that a Rick and Morty joke?'", "'AWWWWWWWWWW'"],
                    failed_response: ["","","urgh why do you feel the need to lie to me, anyway...","","","","","'Urgh nice try dude'", "", "keep dreamin", "", "HA you? as if", "'Urgh, why do you feel the need to lie to me? Anyway...'", "" ],
                    req_strength: [0,0,0,0,0,0,0,0, 0, 0, 0, 0, 0, 0],
                    req_intelligence: [0, 0, 7, 0, 0, 0, 0, 0, 0, 7, 0, 5, 8, 0],
                    req_charisma: [0,0,0,0,0,0,0,10, 0, 0, 0, 0, 0, 0],
                    requires: ["","","(Requires 7 Intelligence)","","", "","", "(Requires 10 Charisma)", "", "(Requires 7 Intelligence)", "", "(Requires 5 Intelligence)", "(Requires 8 intelligence)", ""]
                },
                C:  {  
                    output: ["'I own the place'",
                            "*Flexs*", 
                            "'I'd rather not say...'",
                            "'Does Rick and Morty count?'",
                            "'Watch this' *does backflip*",
                            "'They're all pretty nice'",
                            "'I love to cook'",
                            "'I met the queen once'",
                            "'Depends on my mood'",
                            "'I don't have one'",
                            "'IDK sleep I guess'",
                            "'Incapable'",
                            "'I won state championships for 200 meter in high school'",
                            "'I don't really like people or have friends'"



                        ],
                    trait: ["~", "~", "~", "Rick and Morty", "~", "~", "~", "~", "~", "~", "~", "~", "Sports/exercise", ""],
                    score: [10, 5, -3, 1, 10, 0, 3, 1, 1, -3, -3, -3, 5, -5],
                    ht_score: [0, 7, 0, 7, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0] ,
                    failed_score: [-5,-5, 0, 0, -5, 0, 0, 0, 0, 0, 0, 0, -5, 0],
                    response: ["'WOW that is super impressive!'", "Wow, Nice!", "'Oh... ok?'", "'Hahahaha not really :P'", "'WOW! You're amazing'", "'Cool...'", "'Nice! You can cook for me :P'", "Nice", "Fair me too I guess", "'Ok then'", "'Cool...'", "'Ok dude'", "'Damn dude that's awesome'", "'That's sorta creepy'"],
                    has_trait_response: ["", "", "", "wubbadubba dub dub", "", "", "", "", "", "", "", "", "'Man you're so impressive'", ""],
                    failed_response: ["Urgh why do you feel the need to lie to me", "'urgh nice dude...'", "", "", "'OH no! are you ok? I think you ripped your pant'", "", "", "", "", "", "", "", "Urgh why do you feel the need to lie to me", ""],
                    req_strength: [0, 5, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 8, 0],
                    req_intelligence: [0,0,0,0, 0,0, 0, 0, 0, 0, 0, 0, 0, 0],
                    req_charisma: [10,0,0,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0] ,
                    requires: ["(Requires 10 Charisma)", "(Requires 5 strength)", "", "", "(Requires 10 strength)", "", "", "", "", "", "", "", "(Requires 8 Stregth)", ""]
                },
                D:  { 
                    output: ["'Only for special occasions'",
                            "'Yeah I enjoy it but it can be a bit boring by myself'",
                            "'I'm an athlete'",
                            "'not much'",
                            "'only the big games'",
                            "'I hate animals'",
                            "'Stalk pretty girls home heheh'",
                            "'I meet Snoop Dogg once'",
                            "'I love a lot of music honestly'",
                            "'Actor'",
                            "'Probably party'", 
                            "'Being funny'",
                            "'I can do the hand signs for Fire-ball-jutsu from Naruto'",
                            "'Brilliant people'"


                    ],
                    trait: ["~", "~", "sports/exercise", "~", "~", "~", "~", "~", "~", "~", "Partying", "~", "Naruto", ""],
                    score: [5, 3, 5, 0, 1, -5, -10,  3, 3, 3, 3, 3, -3, 5],
                    ht_score: [0, 0, 10, -1 , 0, 0, 0, 0, 0, 0, 0, 0, 5, 0 ],
                    failed_score: [0, 0, -5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -3],
                    response: ["'I guess I am special then hehe'", "'well maybe I could join you one day'", "'wow that’s pretty cool'", "oh ok", "cool" , "'What the hell man?!'", "'What the hell man?! Not funny at all'", "'that dope hahah'", "'I love that'", "Yeah that would be cool", "'That sounds pretty fun'", "'I believe it'", "'That's the acomplishment you're most proud of?!'", "'I can't wait to meet your friends'"],
                    has_trait_response: ["", "", "'“WOW! That’s super damn impressive! I’d love to see you compete some time'", "'oh ok. well I like it'", "", "", "", "", "", "", "Awesome! Me too", "", "'Really?! I've always wanted to be able to do that. You HAVE to teach me.'", "" ],
                    failed_response: ["","", "'why do you feel the need to lie to me?'", "", "", "", "", "", "", "", "", "", "", "'Wow that was a bit pretemtious wasn't it? Anyway'"],
                    req_strength: [0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                    req_intelligence: [0,0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8],
                    req_charisma: [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
                    requires: ["","", "(Requires 6 strength)", "", "", "", "", "", "", "", "", "", "", "(Requires 8 Intellience)"]
                }
            }
    end
# end of initalize

    def ask_number(i)
        if @flirt_score >= 50
            print "\e[2J\e[f"
            puts "Yeah ok, I'll give you my number. One final question though. \nWhat's my name?"
            name_guess = gets.chomp.capitalize
            if name_guess == @name
                puts "'Ok, yeah you can have my number. Here you go' *give number*"
                puts "YOU WIN!"
                puts "You completed the game in #{i} questions, see if you can beat it next time"
                exit
            else 
                puts "'My name is #{@name}...'"
                puts "'I can't believe I was going to give you my number. Get lost'"
                puts "'YOU LOSE!'"
                exit
            end
        else
            puts "'Ha! as if. Get lost'"
            puts "#{@name}'s flirt score was only #{@flirt_score} when you asked them out"
            puts "YOU LOSE!"
            exit
        end
    end

    def update_flirt(score)
        @flirt_score += score
    end
end 

# end of person class

date = Person.new(gender, date_name, traits.sample(2) )


puts "Instructions"

puts "You are meeting your date for tonight at 'The Black Cabin' the coolest club in Brisbane.\nYou have been searching on Tinder for someone to to go out with and have finally found someone to go out with. #{date_name} \n "
puts "#{date_name} is interested in #{date.trait[0]} and #{date.trait[1]}. \nRemember these ^^ as responses that incorporate them will be worth more."
puts "Increase #{date_name}'s flirt score by choosing the most correct responses. If their flirt score drops to 0 they will leave so be careful.\nOnce #{date_name}'s flirt score it is greater than or equal to 50 ask #{date_name} for their number (Their flirt_score starts at 5). If you ask them for their number before your flirt score is above 50 then you will lose. \n  "

puts "Choose your responses by using the arrow keys and hitting enter or enter details using the keyboard with either letter or numbers where appropriate. \n "

prompt.select("Once you have read the rules hit enter", ["Next"])

print "\e[2J\e[f"


valid_input = false
until valid_input 
    puts "Please choose your skills for this evening (maximum #{num_of_attributes})"
    date.strength = prompt.ask("How much Strength would you like: 0-10?") { |q| q.in("0-10") }.to_i
    date.intelligence = prompt.ask("How much Intelligence would you like: 0-10?") { |q| q.in("0-10") }.to_i
    date.charisma = prompt.ask("How much Charisma would you like: 0-10?") { |q| q.in("0-10") }.to_i

    if date.strength + date.intelligence + date.charisma > num_of_attributes
        puts "You have entered in too many skill points. Please try again"
    else 
        valid_input = true
    end
end



is_ready = prompt.select("Are you ready?", ["Begin", "Quit"])

if is_ready == "Quit"
    exit
end

print "\e[2J\e[f"

i = 0

    date.questions[:prompt].length.times do 
        selection = prompt.select("#{date.name}: #{date.questions[:prompt][i]}\n", ["#{date.questions[:A][:output][i]} #{date.questions[:A][:requires][i]}", "#{date.questions[:B][:output][i]} #{date.questions[:B][:requires][i]}", "#{date.questions[:C][:output][i]} #{date.questions[:C][:requires][i]}", "#{date.questions[:D][:output][i]} #{date.questions[:D][:requires][i]}", "*ask for number*"])

        case selection
        when "#{date.questions[:A][:output][i]} #{date.questions[:A][:requires][i]}"
            selection = :A
        when "#{date.questions[:B][:output][i]} #{date.questions[:B][:requires][i]}"
            selection = :B
        when "#{date.questions[:C][:output][i]} #{date.questions[:C][:requires][i]}"
            selection = :C
        when "#{date.questions[:D][:output][i]} #{date.questions[:D][:requires][i]}"
            selection = :D
        when "*ask for number*"
            selection = :E
        end

        if selection == :E
            date.ask_number(i)
        else
            if date.strength < date.questions[selection][:req_strength][i]
                puts "#{date.name}: #{date.questions[selection][:failed_response][i]}"
                date.update_flirt(date.questions[selection][:failed_score][i])
                date.questions[selection][:failed_score][i]
                puts "Flirt score = #{date.flirt_score} \n "
            elsif date.intelligence < date.questions[selection][:req_intelligence][i]
                puts "#{date.name}: #{date.questions[selection][:failed_response][i]}"
                date.update_flirt(date.questions[selection][:failed_score][i])
                date.questions[selection][:failed_score][i]
                puts "Flirt score = #{date.flirt_score} \n "
            elsif date.charisma < date.questions[selection][:req_charisma][i]
                puts "#{date.name}: #{date.questions[selection][:failed_response][i]}"
                date.update_flirt(date.questions[selection][:failed_score][i])
                date.questions[selection][:failed_score][i]
                puts "Flirt score = #{date.flirt_score} \n "
            else
                if date.trait.include?(date.questions[selection][:trait][i])
                    puts "#{date.name}: #{date.questions[selection][:has_trait_response][i]}"
                    date.update_flirt(date.questions[selection][:ht_score][i])
                    date.questions[selection][:ht_score][i]
                    puts "Flirt score = #{date.flirt_score} \n "
                else
                    puts "#{date.name}: #{date.questions[selection][:response][i]}"
                    date.update_flirt(date.questions[selection][:score][i])
                    puts date.questions[selection][:score][i]
                    puts "Flirt score = #{date.flirt_score} \n " 
                end
            end
        end
        if date.flirt_score < 0 
            puts "#{date.name}: 'Sorry I'm not really feeling this. I'm going to go home'"
            puts "#{date.name}'s flirst score dropped below 0 and has left. YOU LOSE"
            exit
        end
        
        i += 1
    end

    final_attempt = prompt.select("#{date.name}: 'Sorry I've run out of time, I've got to go. It was nice meeting you'", ["'Hey before you go, can I get your number'", "'See ya!'"])

    if final_attempt == "'Hey before you go, can I get your number'"
        date.ask_number
    end

    puts "You took too long and #{date.name} got away. YOU LOSE"

    