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
https://viewer.diagrams.net/?highlight=0000ff&edit=_blank&layers=1&nav=1&title=Flowchart.png#R5V1bk5s4Fv41rnnqFJj7Y%2Fo2M1WZTHazW5M8bamNbJjGlgPY7p5fv5IAG3TEJW1A2J2HtJG5WOf6naOjw8y4W7%2F8GqNt8AfxcTSba%2F7LzLifzek%2Fx6Z%2F2MhrPqLN9WxkFYd%2BNlYa%2BBr%2Bg%2FNBLR%2FdhT5OKiemhERpuK0OLshmgxdpZQzFMTlUT1uSqPrULVphMPB1gSI4%2Blfop0E26lraafw3HK6C4sm6ln%2BzRsXJ%2BUASIJ8cSkPGw8y4iwlJs0%2FrlzscMeoVdMmue6z59vjDYrxJu1xgf7mz7U8Iax%2B%2F%2F3n3%2Bd%2F%2F%2BrZ0%2F7zJ2bNH0S6fcP5j09eCAtinBMkPSZwGZEU2KHo4jd7GZLfxMXuMRo9O53wiZEsHdTr4N07T15y7aJcSOhSk6yj%2FFk4lnx17dmkgn9ivmKxxGr%2FSE2IcoTTcV5mFcp6vjucdL%2F1CQvqIuZYLqJfzJpfOG8%2FUqrdIyC5e4PyqMnHbbqQJN0pRvMIpuBH9UJrPaYjz7if46EyCj%2FglTL%2Bxyz%2BYupMffy99d%2F%2BS35sfvJYOvuA4pDTAcT5WKxEZQ7KhW32V%2FNj%2BFX7Wfhwe%2F07%2B5wWv0Y3r5VaCE7yBZMY4IuYIkuEa3USsL8kwgGR8icmeG1U6t13E%2F5IlM7VojZmpRikf22SHaOOXBumPxDFO0gSIV1V4DkGY4q9bxFl1oL6ho8LvcZzil0Z%2BFL5FpGuhcYeTmdaLk4KSiba1ehZWiP%2BzlNbdaSjhhk4m00KrOPxeqBo7OGkhPyrUsJPKySduQZWT6qZnjqNzRydcoA5nXGtcEKSqdP5uwRRqG5P1Np1Zty8z6%2F6oYIuAhAuqYsWwIDcj6JNVIZluq1an4xRKRAwXz8wKoQzw0cklVEyYdnCZSbZkk%2BB3BWBESTesNwIY8UbWfDCVkZoGB3JbHSMFrr3NKs67WkVHO1M0zlMzaKu%2BzRjzKS00HfBgeEPkuVVJ1M0RLZGUQRISTVs2W0VunGjK7hhN9eV2LXMSfDpFQVb3GKhv0AbEpNVeGYPIhOt9sASpEMHYW2NsZ%2BQY24JB9seE45EliVnAtFs%2F0QB2bqM1s4qbp2R75NBE4EhrUGy54%2BAWISo2RLTRVSZuxDuZ%2BrhCUTidklB8JpPieaviFzxvFw6vb%2BE4C7nYc0D6VwwTE9dBe7v3gOIs2lsw1%2FEYhTHTzGRBYp44eiJ79pdGJMYj4EockPXTLhklVXRjGoK5cSGkdCWI0h0KUdreJJBKDVR4kyB7g%2FgJSinBvg8XlzbavBKn7lHK5DpBr8z3pwFm8%2FTJ5hf2u6PwGWeja%2F4HscH1bhHMikxPhNFeYqZGUANbF9TAUx1ZeVNaf%2BpFD%2ByuIZhnKfWdMN2SY1kqufT%2FXcKQrHbI5DcbExYGQiUybFpCnsoYUYblpITZgc2FIUB7pLWwG1Ow5u7I1tyGsOX7pUHGglntkNHpm6vn6QlcibwjccyKNnKbMjWY6CiHiZeWeGwXXnMYwyLCxNENC0w9SmEi4qHRGvlHOJiNMFAYblatySMFKNFRjhLtaVS39KkGDrTh8qnbSk02JPx%2FsssqKDEgBy7UG%2FbL0l284ZUiHDgS8lyKhgiXog2UcvVSL%2BJKz1It9RNZzCgWJo4HfFnitErRuDDxs8oy4mKVLjAcrkvUuIyPcYxeS6dt2QlJ%2FYNApZLlCIWabRfY1Qvoh%2Bw39LoAD6EGy2N3WMv4hJ5wVBUaFIWrDf28wBte0nfLFDFcoOhj%2FsU69P1MPnES%2FoOe%2BP2Y2OTEpDe3blkdTPFMoMnHit%2F84tmRamURq1esekugfZgbbk6Nt8pYcQpZLhM8SL2EDvNSSiOZCWu6uG5oelYnRe%2BNVYBTTzg9YEz9IFvBzHGg3keaXKImgA%2B1kg8Moq44%2FJlPwwV2F%2FD2uotzS306SrghSHh%2FhRfymutJ8GkKUGUY%2FgKsYtrdTNjZWMXIH9QZq5jVC4bBKtD3XStWca8BqxTm4LqwyjimHHjXocEKrGe5DLRiapZitALz29MW8Xa0MkyyFoh4x%2BKv3kQcmqP3CleGYTCAK3NxV8JQcKV4cme4MrdGSK3o0DJcK17JdOviAQssS7kCwGJ2Nfs1oLP3NYfGn3lxAESXrJONCkD0aRRT1fm1%2BZiO7VwR7rpm4A4Thxtm9UFGs1sTT6e%2Fq%2FkCyUTG8INwOfFq%2FWDNuu2F%2BUHIsCvwg11L7vWxKjQbf2Z57Z2kfKczStM4fNpl1ZhUMfjyO4roX8xcY7EPKevqUDn5dFK2ZckPl8twsYtSNq8I75mSqfWqANFLluENiVfVxSCyv3X4Sy7Ckqu1pEWKfOrn7gk8j%2FCXXPbTQPjeYYkIRZ2OqwO9uQmYj%2F89q3nj1eO1nRp%2BSbK57zGfTRojXjQUbhbRzudWitUKCdXn%2FCxuyzKAotZcGdXNrbasVk5qrsSMSG9aY8D4SeWGxF70xph3NFiGUoMl2VRx%2BXCpM%2B3PNm7nif0c0P6eYLChJUB7fByL8Y9dGHNDkzyH%2FBlFYJbjozoLRrbs45Qsz7FfS6vlEfuP9ceCq%2FPXhmSrhfzEscp0G39mifBkl253THSXKIy4hJ%2FaI%2FVRbHuW6JpCusJS3uHFuOT9uA0S2UV0lWZ7DZiz%2FOj7crnN6seX1W3mkxNmW7JpaFxhluzNv3RhlqRs5FNXmrIxIOGPdngRoM1qskJsCV1UPOVCbEI8d%2BFCbHYFE%2Ba5q%2FLnEb4BTFBJ%2FbFj%2FapvA3SMxU%2BDFWs9viGuAmJvzH6wcmM0jfLlU2sxZXUmZtel57PBSE2CTPDRujZcQ9hGAgCY065RRTudSfoNQFflSN68OvBjds3WW%2BdWpJ5HeBhCNQWho4uq6B8c5Rs8rWlAnDr%2FYGct%2FBs8BD%2BSd%2B7vRfILDqlyG4Ymmjcxdzaw2ygIUB8dT9o7iO7BVd5JQNLC8%2BIXR6yufaYtpUlKSaNMRYsjdb129RZzNzDPGrpz927ZPKHTjena4xo2WFPBV4yXNT0klRd7OkJTcs%2BBpmzc1kCXttukXSe6Zqyzvq%2Bq7JgFM9ZfsxY%2FftbwJwvkIrxMJ%2BCCHVuAMOq76Uva9j688MKP7AVE06PZXHk2VNJeqkKz0Wl0406vSxRUTMU0EnsK6Zp6IsH0yMQESX1TWmcarnUC%2BwMLkDN8qbQcpjpifnHktK0DzW5dzHJxOxScmlK5%2FPbaB6qIdpX62dF0tys409gANbACyk9UuvDtwNieh3PsRVLF%2FgTd5DFcC7obNaYTPI8uaSU9akznXF0VktP5HWhKq5AcmI5o6N66IrxTa5Zz5d38JxC0iA1wb2T1oKPCKBdWQ198rtXpWojkKl2Lc6exZem8l5oNxrCGF9r0jmBvDEEvjY5LSD%2FdCkPcAqy37BmGF2jNF4CpiFcMs2nY7d6L4eIwuFuD2o4YXHeLZfVCfGZTx%2BAwwSDbh3FA2ZYv5kKzOefd0JPn46l5PrXYiYFD9jff3Kp4OQB4W1nzB6m7HW6fqjuNtEWPxtvtGv24c6XeFkY%2FOXosXvWkHB26QF7HfL13A88mlIk8ZWcnRCRZNZsdsdLAZItYI%2F0V%2B%2FzfzKhyH3d6QxNosh9lJYWP5UsBoZMAbdlHSjgURTR4X8Vozfxhqc6n8l2pAKjN8i7DF%2BznlmOYbXAMkyhnmiyMh0x74IiEzjXGS5ztQsw93gpTExxfKcPmAsPU12l7MFBtULJtuODvSUtSOuNVyt7rJ24efRd8c9TzDXqQDnyjLKL3DqmOLfB74Z1oJE3la2yeDKy28m4RoDhM1ui98k19IYIHV8QAj0i4aM%2BInuIMfZSITaj%2BnqvXgKvbLe91LWq0lXbp8GByVMTPvO3M6d2n7Lc94SjE%2B%2BK9p9I3oiqWcFBuYg9Y6kUPY8K2KJ1yR3ROwR%2FEZxm4h%2F8D

## Develop an implementation plan which:
https://trello.com/invite/b/VImcqzOO/e318cc6e2cf0ee906914c15e6269fba3/dating-terminal-app

## Design help documentation which includes a set of instructions which accurately describe how to use and install the application.

You must include:

- steps to install the application
- any dependencies required by the application to operate
- any system/hardware requirements
