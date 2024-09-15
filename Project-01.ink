/*
    Project 01
    
    Requirements (for 15 base points)
    - Create an interactive fiction story with at least 8 knots 
    - Create at least one major choice that the player can make
    - Reflect that choice back to the player
    - Include at least one loop
    
    To get a full 20 points, expand upon the game in the following ways
    [+2] Include more than eight passages
    [+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
    [+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
    [+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
    
    Make sure to list the items you changed for points in the Readme.md. I cannot guess your intentions!

*/
// Interactive fiction project : Autumn memories

VAR friend_name = ""
VAR classmate_name = ""
VAR morningtext_seen = 0
VAR momtextseen = 0


-> awakening

== awakening ==
Before awakening from slumber what is your best friends name?

* [Hazel]
    ~ friend_name = "Hazel"
    -> awakening_2
    
* [Alex]
    ~ friend_name = "Alex"
    -> awakening_2
    
* [Liam]
    ~ friend_name = "Liam"
    -> awakening_2
    
* [Lucas] 
    ~friend_name = "Lucas"
    ->awakening_2

    
== awakening_2 ==
As you start to wake you try and remember your one classmates name you bumped into last night.

* [Scarlett]
    ~ classmate_name = "Scarlett"
    -> Bed
* [Connor]
    ~ classmate_name = "Connor"
    -> Bed
* [Cardan]
    ~ classmate_name = "Cardan"
    -> Bed
* [Mia]
    ~ classmate_name = "Mia"
    -> Bed
    
    
== Bed ==
You awaken. Birds are chirping outside. You look at the time.
Shit, your totally going to be late.
You hear your step dad downstairs yelling to GET UP.
You need to rush to get ready for school.
*[Check bag]
    -> check_bag
*[Check phone]
    ->check_phone
*[Get dressed]
    -> onto_school

== check_bag ==
Your notebook, textbook, and some pens and pencil lay at the bottom of your bag.
*[Return]
    -> Bed
    
    
== check_phone ==
You turn your phone on. 3 texts from {friend_name}. 1 from mom.
+[{friend_name}]
    ->friends_text
+[Mom]
    ->moms_text
*[Continue getting ready]
    ->bed_2
== friends_text ==
~ morningtext_seen = morningtext_seen + 1
48min:"I'm up early. Stopping by ******'s before school."
46min"Let me know if you want to smoke before bell"
5min"Are you awake??"
*["Just woke up. Be there soon."]
 ->check_phone
*["Shit. On my way.""]
 ->check_phone


== moms_text ==
~ momtextseen = momtextseen + 1
      Mom:
30min: Make me proud on your test today! I'll have your favorite waiting for you at home tonight. 
*[❤️]
 ->check_phone
 
== bed_2 ==
*[Get dressed]
    -> onto_school
== onto_school ==
After rushing to get ready you hop in your step fathers car. 
"This can not be the routine if your wanting to graduate and head to college dammit." 

*["Like you actually even care about how I end up. You just want my mom not on your ass."]
    -> car_aurgement 
*["I'm trying. Just give me time"]
    -> car_ride

== car_aurgement ==
"I care more then you think. You just wont let me express that."
*["I wont let you express whats not true."]
    ->carride_end
== car_ride ==
"I'm only hard on you because I want whats best for you kiddo. You shouldn't spend the rest of your life living here."
*["I promise I'll do better. Thank you.]
    ->carride_end
    
== carride_end ==
The car comes to a stop and the door unlocks as you roll up to school.
*[Get out]
    -> school_arrival

== school_arrival ==

* {morningtext_seen > 0} [Find {friend_name}] -> morning_sesh
*[Head to class] -> first_period

== morning_sesh ==
You find {friend_name} leaning on the outside of their car in the back of the parking lot. 
They give you a grin.

"Bell rang 5 minutes ago."
"Lets hurry up." 
You take the lit bowl.
The morning breeze lightly brushes over you. You take a second to smell the earthy scent of Autumn. It is a good morning.
*["And hows your morning going?]
->morning_convo


== morning_convo ==
"The same bullshit as always. I can't wait to just escape."
*["That makes one us, I'm in no rush to leave the valley."]
    "You find a joy in this place that I've never been able to tap into."
    ->morning_convo_2
== morning_convo_2 ==
*["Lets head to class?"]
 "We could, or we could go for a hike"
 ->morning_convo_3

== morning_convo_3 ==
*[I'm trying to do just a bit better. Atleast for my parents. I need to go to class]
 ->school_enterance_late
*[Now that is a great idea."]
 ->skipping
 
 == school_enterance_late==
 You walk into school.
 'only 20 minutes late. could be worse'
 *[Continue]
  ->first_period

 == skipping ==
You and {friend_name} duck under one of the schools fences and head into the woods.
"I've got a place I want to show you! It's gonna be a walk though, you better keep up."
*[A new place discovered by {friend_name} 🙄, where shall I be taken today?]
 "You'll love it just trust me!"
 ->forest_path
 
 == first_period ==
 Like most days, 1st is a breeze.
 *[Head to 2nd]
 ->second_period

== second_period ==
You sit down in class and read the board. "EXAM 2 TODAY"
{classmate_name} walks by, "Should be a breeze 😉"
*[Start test]
 ->Test
 
== Test == 
You work through the exam pretty quickly. They're never that hard.
*[Finish class]
    -> hallway
    
== hallway ==
As you leave second period {classmate_name} grabs your shoulder.
"Hey I told you at the Barn I'd find a way to get that guys guitar. Find me after school!"
'okay, theres no way they have that silver plated Ibanez, right?'
*[Head to 3rd period]
    ->3rd

== 3rd ==
No sign of {friend_name}. Out skipping.
*[Finish the school day]
-> end_of_day

== end_of_day ==
The last bell of the day rings and you head out to the parking lot to find {classmate_name}.
*[Look around]
->afterschool_parkinglot

== afterschool_parkinglot ==
You see {classmate_name}'s car. You start to walk over.
*[Continue]
    ->afterschool_parkinglot_2

== afterschool_parkinglot_2 ==
As your walking over your feel your phone start to ring. 
You start to grab it.
"Brrrymm"
*[Look up]
    -> afterschool_parkinglot_3
*[Answer the call]
    ->answercall
    
== afterschool_parkinglot_3 ==
you look up and see {classmate_name} with the exact guitar you wanted to take.
"Hop in! Lets jam!"
*[Hop in the car]
    ->jamsesh
== answercall ==
"Hey {friend_name}, whats uppp"

"Sent you my location. Come by some time I think you'll like it."
*["Ha, you find a new smoke spot?]
    ->call_continued

==call_continued ==
"yeahhhhhh come pull up?"

"Brymmmm", you look up and see {classmate_name} with the exact guitar you wanted to take.

*["yeah I'll be there in 10"]
    ->forest_parking

*["let me call you back in a bit"]
    ->afterschool_parkinglot_3_alt

== forest_parking ==
You arrive at the closest parking area to {friend_name}s pin. 
*[Call {friend_name}]
    ->forestcall

== forestcall ==
No answer.
*[Start walking.]
    ->forest_discovery

== forest_discovery == 
You walk for what feels like forever through the forest. You finally get to a massive water fall.
*[Must be here]
    ->waterfall_alt

== waterfall_alt ==
You look down towards the rocks at the bottom and see a backpack.
*[head down]
    -> waterfall_alt_2
== waterfall_alt_2  ==
As you get to the rocks you notice {friend_name}s phone also on the rocks.
*[Shout for them]
    ->forest_shouting

== forest_shouting ==
'{friend_name}!'
'{friend_name}!?'
'{friend_name}?'
You feel sick to your stomach. You stumble back to your car.
*[Continue]
->home_discovery

== home_discovery ==
You sit parked in your driveway for what seems like hours.
    -> next_autumn

== afterschool_parkinglot_3_alt ==
"Hop in! Lets jam!"
*[Hop in the car]
    ->jamsesh
    
== jamsesh ==
You jam with {classmate_name} and their friends for the next couple hours before heading home.
*[Go home]
    ->home_ontime


== forest_path ==
The warm air feels amazing as you walk through the forest. You encounter deer resting in the rays of sun cutting through the tree tops.
"I was thinking about the next barn weekend, we are totally going right?"
*["Of course, that shit was a blast. Next time promise you wont get so drunk you convince the singer to let you join in?"]
 "O but it was sooo fun."
 -> forest_path_2
 
== forest_path_2 ==
As you continue through the path you start to hear a roaring.
*["Ok so where am I being taken to?"]
    {friend_name} starts to run "hurry up and see this!"
    ->waterfall
    
== waterfall ==
You make it to an opening and see a roaring water fall. As you get closer water sprays you.
*["ok this is fucking awesome"]
"Told ya so." {friend_name} leaps into the water at the base of the fall. "JUMP IN!"
 -> waterfall_2
 
== waterfall_2 ==
*[JUMP]
 -> waterfall_3
 
== waterfall_3 ==
You spend the rest of the day smoking, swimming and enjoying life.
*[Continue to sunset]
 -> waterfall_sunset
 
== waterfall_sunset == 
The sun starts to set. You have no care that school ended hours ago.
"Thanks for today. I feel a lot better knowing it was spent with you."
"I haven't been happy recently. It seems the more the leaves change and fall the worse I become."
*["Well if you start being moppy you'll be stuck with a mopey me following you around"]
{friend_name} laughs. "And what will I do with a mopey you. TB on the way home?"
->waterfall_sunset_2

== waterfall_sunset_2 ==
*["Fuck yeah"]
 ->drive_home
 
== drive_home ==
Just Hold On - Julian Emery plays 
The windows are rolled down as you cruise through the forest on your way home from the school parking lot.
*[Continue]
 ->home_late
 
== home_ontime ==
You step inside and are instantly greeted by your mom
"Just finished making dinner! Your right on time, how was your test?
*["Went well, I'm ready to eat.]
    ->dinner
    
== dinner ==
You eat dinner, afterwards you remember you need to call {friend_name} back.
*[Return call]
    ->returncall
    
== returncall ==
No answer.
->the_next_morning_2

== the_next_morning_2 ==
You wake up in the morning, on time, and instantly text {friend_name}
*[Heyy where you at?"]
    ->no_response
 
== home_late ==
You arrive home just as it  gets dark. 
You step inside to your parents waiting.
"Skipping school and not even getting home till dark!"
"Do you have anything to say?"
*[stay silent]
 -> home_late_2

== home_late_2 ==
"We are not happy. You cant just throw your future away day after day"
* {momtextseen > 0} [Apologize to mom "sorry you said youd make a special dinner today"]
-> the_next_morning
*[Continue to your room]
    You crash into bed. 'fuck school and whatever they think, today was awesome'
-> the_next_morning

== the_next_morning ==
You wake up in the morning, on time, and instantly text {friend_name}. 
*["Parents pissed! What we on today?"]
 ->no_response
 
== no_response ==
No response
*[Head to school]
->school_the_next_day

== school_the_next_day ==
{friend_name} doesn't show up at school at all that day.
*[Next Autumn]
->next_autumn

== next_autumn ==
Voices - Daughter plays in your headphones.
It's Autumn again. You watch out your window as the red and yellow leaves fall from their trees.
You pack your bags. Your leaving.
'another Autumn here without you is pointless'
*[Finish packing and leave the valley.]
->END










