/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = 0 //  0 Morning, 1 Noon, 2 Night
VAR shinies = 1 
VAR key = 0
VAR jester = 0
VAR lionn = 0
VAR woman = 0 

-> seashore

== seashore ==
You are sitting on the beach. 
it is { advance_time() }
+ [dig] -> keyslot
+ [Wait] -> seashore
-> DONE
+ [move down the beach] -> beach2

==keyslot==
after digging infront of your bench you find three keyholes.
+ go back -> seashore
+ {key == 3} insert keys. -> fin

==fin==
{time == 2 : even though you cannot see it, you feel the presence of the old circus disapear. The air around the beach feels lighter|  }
{time == 1: you hear a large snap and turn to look towards the circus. the old structure finally gives way and buckles beneath its own weight. The bigtop tumbles down until its nothing but a pile of old wood and cloth that slowly loses itsself to the waves.| }
{time == 0: you hear a large snap and turn to look towards the circus. the old structure finally gives way and buckles beneath its own weight. The bigtop tumbles down until its nothing but a pile of old wood and cloth that slowly loses itsself to the waves.| }

perhaps its better this way. -> DONE
== beach2 ==
This is further down the beach.
it is { advance_time() }

+ { time == 1 } [pick up shiny shells] -> shells
+ [Move back up the beach] -> seashore
+ {time == 0} [move even further] -> circus
+ {time == 1} [move even further] -> circus
+ {time == 2} [move even further]->nocircus

==nocircus==
the beach is empty.
+ [go back] -> beach2
==circus==
there sits a towering, several story tall circus atop the shimmering white sands. Passerby pay the impossible looking building no mind. 
it seems youre the only one who can see it.

there is a sigh outside
"CLOSED AT NIGHT"

+ [enter] -> in
+ [go back] -> beach2


==in==
it is { advance_time() }
the inside of the red and white striped big top is illuminated with flickering farie lights and various incandescent signs that hang above three seprate doorways. The hum of a calliope can be heard echoing from the three halls before you, though you are unsure of its source. The wind outside beats against the building, causing the rotting wooden foundation to creek under its own weight
{jester == 1: the 1st room has disappeared.| }
{woman == 1 : the 2nd room has disappeared.| }
{lion == 1: the 3rd room has disappeared. | } 
+ {jester == 0} [enter the juggling hall] ->balls
+ {woman == 0} [enter the trapeze hall] -> trap
+ {lionn == 0} [enter the lion hall] -> lion
+ [go back] -> circus
== balls ==
you enter a small room, it smells of old wooden track lube and mothballs.
 a bowl wooden bowl atop a pesestal has four shells carved into it. 
 you have {shinies} shells
 + [go back] -> in
 * {shinies > 3} [insert shells] -> ballzz
 
 ==ballzz==
  ~ shinies = shinies - 4
 ~ jester = jester + 1
 ~ key = key + 1
 an old jester robot wheels forward, his green and white hat is coated in rust. The fabric on his limbs that once mimicked skin is now falling off, revealing a crude silver endoskeleton. 
 the old jester attempts to juggle, but he only has one ball. He tosses the ball up, and catches it as it comes down, and the throws it again. Playing a lonely game of catch.
 You cant tell how much time passed before the ball falls to the floor and shatters. Time doesnt seem to truly exist here. 
 the shattered remains of the ball have a key sitting in the middle.
 
 * [take it] -> in
 ==lion==
 you enter a small room, a tapestry that once hung from the celling has fallen and is now balled up on the floor.
 upon picking it up you see a lion with two shells in its mouth.
 A big, flickering red button sits infront of a curtained stage.
 +[press it] -> lioin
 + [go back] -> in
 ==lioin==
 after some effort, you press the button with a large click.
 
 the curtians pull back after a few stutters revealing a large old lion animatronic.
 its fur is matted and one of its eyes is missing. It makes some attempt at a roar but the audio skips and repeats, never ceasing. 
 Its jaw slowly opens.
 you have {shinies} shells
 * {shinies > 2} [insert shells] -> lin
 
 + [go back] ->in
 ==lin==
 ~ shinies = shinies - 2
 ~ lionn = lionn + 1
 ~ key = key + 1
 upon iserting the shells and stepping back, the lions jaw snaps and falls to the floor. The audio loop grinds to a halt after the lion lets out its first, and final full growl. It sounds mournful, almost like a goodbye.
 
 
 + [take it] -> in
 
 ==trap==
 You enter the largest of the three rooms which sits directly in the center. 
 You look up and see a frayed wire that looks almost unnaturally high up. As if the room stretches the longer you look at it. 
 a coin slot with a single shell drawn crudely with fingerpaint above it sits on the floor right in front of you.
 you have {shinies} shells
 
 + [go back] -> in
 * {shinies > 0} insert shells -> wom
 
 ==wom==
 ~ shinies = shinies - 1
 ~ woman = woman + 1
 ~ key = key + 1
 afte a few seconds of inserting your shells, you hear a loud clank above you and instinctivly look up.
 a slender marrionet wommen with wheels for feet rolls out onto a platform before the wire. 
 the moment she makes her way to the wire it snaps from the middle and she comes crashing down. her porceline head shatters into hundreds of pieces. A single key sits among her remains.
 *take it -> in
== shells ==
You pick up the shells 
you have {shinies} shells
~ shinies = shinies + 2 
-> beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
    
    
