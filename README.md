# fight

Team 1 vs Team 2 who will win? A quick and rough implementation.

The keyword is VICTORY. Who will have the VICTORY.

Calculation is based upon how many times each letter of VICTORY is contained in a team name. Then each number is added to the previous until
there is only a percentage score left. Any number which adds up to more than 9 is scored as 1.

Example:

Surrey Raiders
--------------
0100041  
110045  
21049  
314(13)1 <- Anything over 9 is scored as 1  
3141  
455  
9(10)1 <- Anything over 9 is scored as 1  
91  

Usage
-----

ruby app.rb --team1 'Surrey Raiders' --team2 'An Other'

-----
-----
