# Software development plan

## Develop a statement of purpose and scope for your application. It must include:
- describe at a high level what the application will do

My game will be a text based dating game. 
The goal of the game will be to impress the girl/boy enough that when you ask to go on a date, they accepts.
To impress your partner you will have to have a conversation with them and respond to their questions with answers that they like. This will increase their “flirt” score and if this is pushed above 50 and then they are asked out on a date, they will say yes and you will win the game.
If you ask your date for their number and their flirt score is not high enough you will get rejected and lose the game.
When the game is started a random girl or boy (depending on the users preference) will be generated with random interests and will effect whether certain answers are worth more or less points. Answers that lean into the partners interests will be worth more points. 
At the start of the game the user will be allowed to designate a certain amount of skill points (the amount of skill points changes depending on the game difficulty) and will able to designate between the 3 skills of the game: strength, intelligence and charisma. These skills will be the difference between whether a response will have a positive or negative reaction 

- identify the problem it will solve and explain why you are developing it

The problem that this game is solving is that during the covid era, many people are not able to go out to try and find a partner. By playing this game the user will be able to simulate dating without any risk. They will learn basic principles of dating in what to do and what not to do. My goal is to help the user gain confidence so that when bars are open the user can go back to the dating scene with increased knowledge on what to do.

- identify the target audience

The target audience is men and women aged 18-25. People who have not had much dating experience or none at all. People who may be anxious about the idea of talking to someone at a bar.  

- explain how a member of the target audience will use it

The member of the target audience will use this app by using the arrow keys and selecting with the enter key. They will also in words for their name at the start of the name and the dates name at the start of the game. They will also enter in numbers when selecting how many points they would like for each attribute. 

## Develop a list of features that will be included in the application. It must include:
- at least THREE features
- describe each feature

1. Multiple choice questions effecting the ability to be able to take the partner home or not. (base game)

In the base game, you will be given a randomly generated name for your partner. The gender of the partner will be decided by the user at start up. The partner will then ask the user a number of usual fist date question and the user must decide what answer they think the partner would like best. The degree with which the partner likes the response will decide whether the users “flirt” score goes up or down and by how much. If they then ask the partner if they would like to go on a date then the program will check what the users score “flirt” score is and if it is above 50 the the partner will say yes and they will go out on a date. 

2. Choice of attributes at start up effecting whether player have the option to choose the best answers. 

At the start of the game the user will have the choice of how they would like to divvy up their skill points into the 3 skills: Intelligence, Strength, and Charisma. 
These skill points will effect whether or not the user will get a positive or negative response from certain dialogue options. For example if you try to do a back flip to impress your date and you do not have enough skill points in strength, you will fail and will decrease your flirt score. However, if you did have enough skill points you would really impress your date and increase your flirt score.


3. Change in the partners interests for each new game which effects the amount of points some options will give the user.

At load up the user will have a partner generated who will have a random name and will also have a number of random interests, there will be speech options that will be worth more if the partner is interested in that thing. It will be on the user to remember what the partners interests were so that they can tailor their responses to the specific partner. 



## Develop an outline of the user interaction and experience for the application.
Your outline must include:
- How the user will find out how to interact with / use each feature
At the start up of the game the users will be presented with instructions that will outline: how to play the game, how to enter in your choices and how to enter in their skill points. The instructions also explains how the traits work in the game.

- how the user will interact with / use each feature
Base game - They will interact with it by using the arrow and enter keys.

Attributes - the users will choose how many points they would like to enter into each of their attributes by typing the number when prompted by the app. The app will ask "How much would you like to put into Strength (0-10)?" then the user will just add the number they want. If they enter in too many points for any skill the program will ask them to try again as they have exceeded them maximum number of points for the skill. If the acculation of each of their skills is higher than the allowed maximum for that games difficulty then they will be told to re-enter their skill points until they enter in a total number of points that does not exceed the maximum amount.

Change in the partners interests - This feature does not require the user to do anything other than remember the interests from the start of the game and keep them in mind when picking their response. 


- how errors will be handled by the application and displayed to the user

My game is quite error free as the user is not given much of a choice to enter in an unexpected data type as the user will be selecting there answers from a list of predefined answers. 

However, when they enter their name if there is nothing in that field the program will not allow the user to continue with the program until they enter in a name. 
When the user is entering in their attributes they have to enter in a number that is between the allowed parameters for each individual skill and make sure that the combination of all of their skills is not above the maximum number of skill points allowed for the difficulty they are playing on. If they exceed the maximum for one skill they will be asked to re-enter that skill until it is between the allowed range. If they enter in too many skills overall they will be asked to re enter their skills until it fits between the allowed number of total skills for the difficulty they are playing on.

## Develop a diagram which describes the control flow of your application. 
shorturl.at/fpzG7

## Develop an implementation plan which:
https://trello.com/b/VImcqzOO/dating-terminal-app

## Design help documentation which includes a set of instructions which accurately describe how to use and install the application.


You must include:

- steps to install the application
Upload the main.rb file to your desktop, make sure you have at least ruby 2.7.2 installed. You can either bundle add unit-test, colorize and TTY prompt or install each of the gems and their dependacies individually. These are listed here 
 colorize (0.8.1)
    diff-lcs (1.4.4)
    pastel (0.8.0)
      tty-color (~> 0.5)
    rspec (3.10.0)
      rspec-core (~> 3.10.0)
      rspec-expectations (~> 3.10.0)
      rspec-mocks (~> 3.10.0)
    rspec-core (3.10.1)
      rspec-support (~> 3.10.0)
    rspec-expectations (3.10.1)
      diff-lcs (>= 1.2.0, < 2.0)
      rspec-support (~> 3.10.0)
    rspec-mocks (3.10.2)
      diff-lcs (>= 1.2.0, < 2.0)
      rspec-support (~> 3.10.0)
    rspec-support (3.10.2)
    tty-color (0.6.0)
    tty-cursor (0.7.1)
    tty-prompt (0.23.0)
      pastel (~> 0.8)
      tty-reader (~> 0.8)
    tty-reader (0.9.0)
      tty-cursor (~> 0.7)
      tty-screen (~> 0.8)
      wisper (~> 2.0)
    tty-screen (0.8.1)
    wisper (2.0.1)
  
- any system/hardware requirements
As this program is quite small I am not going to give any hardware requirments as any modern computer can easily run this program. The computer must have a keyboard to enter in their details. 

HOWEVER my program uses a gem TTY prompt. If you use the bash script to run my main.rb on a windows computer TTY prompt will not work. So be sure to run the main.rb directly or use a IOS operating system

# GIT HUB
https://github.com/Ben-Elsom/terminal_assignment