---
layout: post
title: Building a game in Java
categories: [programming, gamedev]
tags: [java, libgdx]
---

Just started working a game in Java and libGDX for a course @ LiU.

###Game Idea

”My Nightmare” is a side-scrolling game where the object is to get to the end of the level, where the user will be introduced to a new level. You can move right/left and also jump/duck. Each level has a number of monsters, the monsters; stay still when you’re facing them but move when you look in another direction. You can not kill the monsters, so the goal of the game is to reach the end of each level without getting caught by monsters or trapped on a level.

From left the screen will fall into darkness. This makes it impossible to go back in the game, and you must also progress to the right before the darkness catches up with the player. When the darkness hits you its game over.
 The USP is the game graphics which are heavily inspired by South Park and animated like in that show. Colors used in the game are black, white, gray, orange and red. Initially I aim for a playable demo with illustrational art and graphics, but my aim is to present a game with the original artwork as its part of the gameplay is essential.
 
####Inspirational games: Super Mario Bros
Castlevania
Mega Man
Little Nightmares   
Game Tech
The game will be developed in Java and libGDX which will be a good fit for the 2D platform game that i aim for, together with the IDE IntelliJ and some graphics editing in Gimp I hope that I have all the tools I need for the project. Graphics for the game will be done via traditional analog animation technics.

###Progression in the Game
With the complexity with the monsters not moving when you look at them, I see a lot of puzzle type of levels. To help the player an extra feature in the game will be available, a flashlight with bad batteries which can not be used unlimited times.  When monsters are hit by the light they will be destroyed. Time will ”charge” the batteries.

###In-game tutoring approach
The first levels will introduce the player to the different aspects of the game. On the first level the user will see that the monsters don't move when you are looking at them, but start moving when you move.  The flashlight will be introduced after the first levels when the user has learned how to jump and duck and knows how the monsters move.

Game full source are avelibal at [github](https://github.com/niklasnson/nightmare-on-java).


