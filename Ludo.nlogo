breed [player1 play1]

breed [player2 play2]

breed [player3 play3]

breed [player4 play4]

globals [movetonext turn tab_inside tab1_inside tab2_inside tab3_inside tab4_inside tab_out tab1_out tab2_out tab3_out tab4_out team_score team1_score team2_score team3_score team4_score x1 y1 tab_dhayem tab1_dhayem tab2_dhayem tab3_dhayem tab4_dhayem playersturn]
  
to setup
  clear-all
  set playersturn 1
  set tab1_inside [0 1 2 3]
  set tab2_inside [4 5 6 7]
  set tab3_inside [8 9 10 11]
  set tab4_inside [12 13 14 15]
  set tab1_out []
  set tab2_out []
  set tab3_out []
  set tab4_out []
  set tab1_dhayem []
  set tab2_dhayem []
  set tab3_dhayem []
  set tab4_dhayem []
  set team1_score [[6 1] [6 2] [6 3] [6 4] [6 5] 
                  [5 6] [4 6] [3 6] [2 6] [1 6] [0 6] 
                  [0 7] [0 8] [1 8] [2 8] [3 8] [4 8] 
                  [5 8] [6 9] [6 10] [6 11] [6 12] [6 13]
                  [6 14] [7 14] [8 14] [8 13] [8 12] [8 11]
                  [8 10] [8 9] [9 8] [10 8] [11 8] [12 8] [13 8]
                  [14 8] [14 7] [14 6] [13 6] [12 6] [11 6] [10 6] 
                  [9 6] [8 5] [8 4] [8 3] [8 2] [8 1] [8 0] [7 0] [7 1] [7 2] [7 3] [7 4] [7 5] [7 6]]
  set team2_score [[1 8] [2 8] [3 8] [4 8] 
                  [5 8] [6 9] [6 10] [6 11] [6 12] [6 13]
                  [6 14] [7 14] [8 14] [8 13] [8 12] [8 11]
                  [8 10] [8 9] [9 8] [10 8] [11 8] [12 8] [13 8]
                  [14 8] [14 7] [14 6] [13 6] [12 6] [11 6] [10 6] 
                  [9 6] [8 5] [8 4] [8 3] [8 2] [8 1] [8 0] [7 0] [6 0] [6 1] [6 2] [6 3] [6 4] [6 5] 
                  [5 6] [4 6] [3 6] [2 6] [1 6] [0 6] 
                  [0 7] [1 7] [2 7] [3 7] [4 7] [5 7] [6 7]]
  set team3_score [[8 13] [8 12] [8 11]
                  [8 10] [8 9] [9 8] [10 8] [11 8] [12 8] [13 8]
                  [14 8] [14 7] [14 6] [13 6] [12 6] [11 6] [10 6] 
                  [9 6] [8 5] [8 4] [8 3] [8 2] [8 1] [8 0] [7 0] [6 0] [6 1] [6 2] [6 3] [6 4] [6 5] 
                  [5 6] [4 6] [3 6] [2 6] [1 6] [0 6] 
                  [0 7] [0 8] [1 8] [2 8] [3 8] [4 8] 
                  [5 8] [6 9] [6 10] [6 11] [6 12] [6 13]
                  [6 14] [7 14] [7 13] [7 12] [7 11] [7 10] [7 9] [7 8]]
  set team4_score [[13 6] [12 6] [11 6] [10 6] 
                  [9 6] [8 5] [8 4] [8 3] [8 2] [8 1] [8 0] [7 0] [6 0] [6 1] [6 2] [6 3] [6 4] [6 5] 
                  [5 6] [4 6] [3 6] [2 6] [1 6] [0 6] 
                  [0 7] [0 8] [1 8] [2 8] [3 8] [4 8] 
                  [5 8] [6 9] [6 10] [6 11] [6 12] [6 13]
                  [6 14] [7 14] [8 14] [8 13] [8 12] [8 11]
                  [8 10] [8 9] [9 8] [10 8] [11 8] [12 8] [13 8]
                  [14 8] [14 7] [13 7] [12 7] [11 7] [10 7] [9 7] [8 7]]


    ;print (tab1_inside)
import-drawing "/Dice/Start.PNG"
  ask patches [set plabel [0 0 0 0 0]
  if (pxcor > 1) and (pxcor < 4) and (pycor > 1) and (pycor < 4)  [ set plabel [6 1 0 0 0] ] ; team1
  if (pxcor > 1) and (pxcor < 4) and (pycor > 10) and (pycor < 13)  [ set plabel [1 8 0 0 0] ] ; team2
  if (pxcor > 10) and (pxcor < 13) and (pycor > 10) and (pycor < 13)  [ set plabel [8 13 0 0 0] ] ; team3
  if (pxcor > 10) and (pxcor < 13) and (pycor > 1) and (pycor < 4)  [ set plabel [13 6 0 0 0] ] ; team4
     sprout 0 [ set color blue ]
       

    set pcolor white
    set plabel-color black
         ;;[team1_score team2_score team3_score team4_score teamhere]
  ask patch 6 1 [set plabel [0 39 26 13 0]]
  ask patch 6 2 [set plabel [1 40 27 14 0]]
  ask patch 6 3 [set plabel [2 41 28 15 0]]
  ask patch 6 4 [set plabel [3 42 29 16 0]]
  ask patch 6 5 [set plabel [4 43 30 17 0]]
  ask patch 6 6 [set pcolor black]
  ask patch 5 6 [set plabel [5 44 31 18 0]]
  ask patch 4 6 [set plabel [6 45 32 19 0]]
  ask patch 3 6 [set plabel [7 46 33 20 0]]
  ask patch 2 6 [set plabel [8 47 34 21 0]]
  ask patch 1 6 [set plabel [9 48 35 22 0]]
  ask patch 0 6 [set plabel [10 49 36 23 0]]
  ask patch 0 7 [set plabel [11 50 37 24 0]]
  ask patch 0 8 [set plabel [12 "/" 38 25 0]]
  ask patch 1 8 [set plabel [13 0 39 26 0]]
  ask patch 2 8 [set plabel [14 1 40 27 0]]
  ask patch 3 8 [set plabel [15 2 41 28 0]]
  ask patch 4 8 [set plabel [16 3 42 29 0]]
  ask patch 5 8 [set plabel [17 4 43 30 0]]
  ask patch 6 8 [set pcolor black]
  ask patch 6 9 [set plabel [18 5 44 31 0]]
  ask patch 6 10 [set plabel [19 6 45 32 0]]
  ask patch 6 11 [set plabel [20 7 46 33 0]]
  ask patch 6 12 [set plabel [21 8 47 34 0]]
  ask patch 6 13 [set plabel [22 9 48 35 0]]
  ask patch 6 14 [set plabel [23 10 49 36 0]]
  ask patch 7 14 [set plabel [24 11 50 37 0]]
  ask patch 8 14 [set plabel [25 12 "/" 38 0]]
  ask patch 8 13 [set plabel [26 13 0 39 0]]
  ask patch 8 12 [set plabel [27 14 1 40 0]]
  ask patch 8 11 [set plabel [28 15 2 41 0]]
  ask patch 8 10 [set plabel [29 16 3 42 0]]
  ask patch 8 9 [set plabel [30 17 4 43 0]]
  ask patch 8 8 [set pcolor black]
  ask patch 9 8 [set plabel [31 18 5 44 0]]
  ask patch 10 8 [set plabel [32 19 6 45 0]]
  ask patch 11 8 [set plabel [33 20 7 46 0]]
  ask patch 12 8 [set plabel [34 21 8 47 0]]
  ask patch 13 8 [set plabel [35 22 9 48 0]]
  ask patch 14 8 [set plabel [36 23 10 49 0]]
  ask patch 14 7 [set plabel [37 24 11 50 0]]
  ask patch 14 6 [set plabel [38 25 12 "/" 0]]
  ask patch 13 6 [set plabel [39 26 13 0 0]]
  ask patch 12 6 [set plabel [40 27 14 1 0]]
  ask patch 11 6 [set plabel [41 28 15 2 0]]
  ask patch 10 6 [set plabel [42 29 16 3 0]]
  ask patch 9 6 [set plabel [43 30 17 4 0]]
  ask patch 8 6 [set pcolor black]
  ask patch 8 5 [set plabel [44 31 18 5 0]]
  ask patch 8 4 [set plabel [45 32 19 6 0]]
  ask patch 8 3 [set plabel [46 33 20 7 0]]
  ask patch 8 2 [set plabel [47 34 21 8 0]]
  ask patch 8 1 [set plabel [48 35 22 9 0]]
  ask patch 8 0 [set plabel [49 36 23 10 0]]
  ask patch 7 0 [set plabel [50 37 24 11 0]]
  ask patch 6 0 [set plabel ["/" 38 25 12 0]]
  
    ; player1 scores inside
    ask patch 7 1 [set plabel [51 0 0 0 0]]
    ask patch 7 2 [set plabel [52 0 0 0 0]]
    ask patch 7 3 [set plabel [53 0 0 0 0]]
    ask patch 7 4 [set plabel [54 0 0 0 0]]
    ask patch 7 5 [set plabel [55 0 0 0 0]]
    ask patch 7 6 [set plabel [56 0 0 0 0]]
    
    ; player2 scores inside
    ask patch 1 7 [set plabel [0 51 0 0 0]]
    ask patch 2 7 [set plabel [0 52 0 0 0]]
    ask patch 3 7 [set plabel [0 53 0 0 0]]
    ask patch 4 7 [set plabel [0 54 0 0 0]]
    ask patch 5 7 [set plabel [0 55 0 0 0]]
    ask patch 6 7 [set plabel [0 56 0 0 0]]
    
    ; player3 scores inside
    ask patch 7 13 [set plabel [0 0 51 0 0]]
    ask patch 7 12 [set plabel [0 0 52 0 0]]
    ask patch 7 11 [set plabel [0 0 53 0 0]]
    ask patch 7 10 [set plabel [0 0 54 0 0]]
    ask patch 7 9 [set plabel [0 0 55 0 0]]
    ask patch 7 8 [set plabel [0 0 56 0 0]]
    
    ; player4 scores inside
    ask patch 13 7 [set plabel [0 0 0 51 0]]
    ask patch 12 7 [set plabel [0 0 0 52 0]]
    ask patch 11 7 [set plabel [0 0 0 53 0]]
    ask patch 10 7 [set plabel [0 0 0 54 0]]
    ask patch 9 7 [set plabel [0 0 0 55 0]]
    ask patch 8 7 [set plabel [0 0 0 56 0]]
       
  ]
   create-player1 4 [
    set shape "cylinder"
    set color 45
    set size 0.85
    
    ]
    ask play1 0 [set label [2 3]
    setxy first label last label]
    ask play1 1 [set label [3 3]
      setxy first label last label]
    ask play1 2 [set label [2 2]
      setxy first label last label]
    ask play1 3 [set label [3 2]
      setxy first label last label]
    
create-player2 4 [
    set shape "cylinder"
    set color 95
    set size 0.85
    ]
    ask play2 4 [set label [2 11]
      setxy first label last label]
    ask play2 5 [set label [3 11]
      setxy first label last label]
    ask play2 6 [set label [2 12]
      setxy first label last label]
    ask play2 7 [set label [3 12]
      setxy first label last label]
   

create-player3 4 [
    set shape "cylinder"
    set color 15
    set size 0.85
    ]
    ask play3 8 [set label [11 11]
      setxy first label last label]
    ask play3 9 [set label [12 11]
      setxy first label last label]
    ask play3 10 [set label [11 12]
      setxy first label last label]
    ask play3 11 [set label [12 12]
      setxy first label last label]
     
create-player4 4 [
    set shape "cylinder"
    set color 65
    set size 0.85
    ]
    ask play4 12 [set label [11 3]
      setxy first label last label]
    ask play4 13 [set label [12 3]
      setxy first label last label]
    ask play4 14 [set label [11 2]
      setxy first label last label]
    ask play4 15 [set label [12 2]
      setxy first label last label]
    

    ;print (word "" length team1_score "" length team2_score "" length team3_score "" length team4_score)
printturn
 end


to-report Whosturn
  ifelse (turn = 4)[report 1][report (turn + 1)]
end

to-report getpatchtomoveto [score]
  ;ask patches with [first plabel = score] [report self]
  report item score team_score
end

to-report dice
  let r-list [1 2 3 4 5 6]
  report one-of r-list
end

to removel [toremove]
if(playersturn = 1)[
         set tab1_dhayem remove toremove tab1_dhayem]
if(playersturn = 2)[
         set tab2_dhayem remove toremove tab2_dhayem]
if(playersturn = 3)[
         set tab3_dhayem remove toremove tab3_dhayem]
if(playersturn = 4)[
         set tab4_dhayem remove toremove tab4_dhayem]
end


to getvariables
  if (playersturn = 1)[
    set team_score team1_score
    set tab_inside tab1_inside
    set tab_out tab1_out
    set tab_dhayem tab1_dhayem
    ]
  if (playersturn = 2)[
    set team_score team2_score
    set tab_inside tab2_inside
    set tab_out tab2_out
    set tab_dhayem tab2_dhayem
    ]
  if (playersturn = 3)[
    set team_score team3_score
    set tab_inside tab3_inside
    set tab_out tab3_out
    set tab_dhayem tab3_dhayem
    ]
  if (playersturn = 4)[
    set team_score team4_score
    set tab_inside tab4_inside
    set tab_out tab4_out
    set tab_dhayem tab4_dhayem
    ]
  
  
end

to ChangeDrawing [number player]
  clear-drawing
  if (player = 1)[
    if (number = 1)[import-drawing "/Dice/y1.PNG"]
    if (number = 2)[import-drawing "/Dice/y2.PNG"]
    if (number = 3)[import-drawing "/Dice/y3.PNG"]
    if (number = 4)[import-drawing "/Dice/y4.PNG"]
    if (number = 5)[import-drawing "/Dice/y5.PNG"]
    if (number = 6)[import-drawing "/Dice/y6.PNG"]
    ]
  if (player = 2)[
    if (number = 1)[import-drawing "/Dice/b1.PNG"]
    if (number = 2)[import-drawing "/Dice/b2.PNG"]
    if (number = 3)[import-drawing "/Dice/b3.PNG"]
    if (number = 4)[import-drawing "/Dice/b4.PNG"]
    if (number = 5)[import-drawing "/Dice/b5.PNG"]
    if (number = 6)[import-drawing "/Dice/b6.PNG"]
    ]
  if (player = 3)[
    if (number = 1)[import-drawing "/Dice/r1.PNG"]
    if (number = 2)[import-drawing "/Dice/r2.PNG"]
    if (number = 3)[import-drawing "/Dice/r3.PNG"]
    if (number = 4)[import-drawing "/Dice/r4.PNG"]
    if (number = 5)[import-drawing "/Dice/r5.PNG"]
    if (number = 6)[import-drawing "/Dice/r6.PNG"]
    ]
  if (player = 4)[
    if (number = 1)[import-drawing "/Dice/g1.PNG"]
    if (number = 2)[import-drawing "/Dice/g2.PNG"]
    if (number = 3)[import-drawing "/Dice/g3.PNG"]
    if (number = 4)[import-drawing "/Dice/g4.PNG"]
    if (number = 5)[import-drawing "/Dice/g5.PNG"]
    if (number = 6)[import-drawing "/Dice/g6.PNG"]
    ]
end

to kill [x y]
  ask patch x y [
  ask turtles-here [
    let movex first label
    let movey last label
    move-to patch movex movey
    let whom whoms (who)
    if (whom = 1)[set tab1_inside fput who tab1_inside
                  set tab1_out remove who tab1_out
    ]
    if (whom = 2)[set tab2_inside fput who tab2_inside
                  set tab2_out remove who tab2_out
    ]
    if (whom = 3)[set tab3_inside fput who tab3_inside
                  set tab3_out remove who tab3_out
    ]
    if (whom = 4)[set tab4_inside fput who tab4_inside
                  set tab4_out remove who tab4_out
    ]
    print (word "killed")
      set movetonext false
    ]]
  
end

to move
  set movetonext true
  ;; test
  ;set playersturn 4
  ;let random-number 1
  ;;;
  getvariables
  set turn true
  let random-number dice

  ChangeDrawing (random-number)(playersturn)
  print  (word "You Got "  random-number)
  
     ifelse (not empty? tab_inside and random-number = 6 and turn)  
     [
       set movetonext false
       ask turtle first tab_inside [
         ask patch-here [
           set x1 item 0 plabel 
           set y1 item 1 plabel 
           ]
         move-to patch x1 y1
         if(playersturn = 1)[set tab1_out fput item 0 tab1_inside tab1_out
                  set tab1_inside remove-item 0 tab1_inside]
         if(playersturn = 2)[set tab2_out fput item 0 tab2_inside tab2_out
                  set tab2_inside remove-item 0 tab2_inside]
         if(playersturn = 3)[set tab3_out fput item 0 tab3_inside tab3_out
                  set tab3_inside remove-item 0 tab3_inside]
         if(playersturn = 4)[set tab4_out fput item 0 tab4_inside tab4_out
                  set tab4_inside remove-item 0 tab4_inside]
         ;print tab_out
       getvariables
       set turn false
      ]
  
   
     ]
      [
    if (not empty? tab_out and not (length tab_inside = 4) and turn)  [
         let num last tab_out
         let moveto 0
         let score 0
         ask turtle num[
         ask patch-here [
           set plabel replace-item 4 plabel 0
         set score (item (playersturn - 1) plabel + random-number)
         if (score < 57)[
         if (score > 50 and score < 57)[
           if(playersturn = 1)[
           set tab1_dhayem fput num tab1_dhayem
           set tab1_out but-last tab1_out]
           if(playersturn = 2)[
           set tab2_dhayem fput num tab2_dhayem
           set tab2_out but-last tab2_out]
           if(playersturn = 3)[
           set tab3_dhayem fput num tab3_dhayem
           set tab3_out but-last tab3_out]
           if(playersturn = 4)[
           set tab4_dhayem fput num tab4_dhayem
           set tab4_out but-last tab4_out]
           getvariables
           if (score = 56) [removel(num)]
           ]
         
          ; set moveto item score team_score
         set moveto getpatchtomoveto (score)
         ;print moveto
         
       set x1 first moveto
       set y1 last moveto
       
            
     ]]
      ask patch x1 y1 [if (not (last plabel = playersturn) and not (last plabel = 0))[  
          let plabel_here but-last plabel
          if (not (member? 0 plabel_here) and not (member? 8 plabel_here))[
          kill (x1) (y1) ;to kill the turtles on the patch
          ]
          ]]
      
      move-to patch (x1) (y1)
      set turn false
      if (score = 56)[;set color white
        set shape "flag"
        ]
     ]

     ]
    getvariables
    let score 0
     if (turn and not empty? tab_dhayem) [
       foreach tab_dhayem [
         if (turn)[ask turtle ? [         ask patch-here [
         set score (item (playersturn - 1) plabel + random-number)
         if (score < 57)[
         let ssss item score team_score
         if (score = 56)[
           removel (?)
         ]
         getvariables
         ;print (word "tab_dhayem : " tab_dhayem)
       set x1 first ssss
       set y1 last ssss
       set turn false
       
          ]
         ]
         
         if (not turn)[
           move-to patch (x1) (y1)
         ]
      
        if (score = 56)[;set color white
        set shape "flag"
        ]
         ]
            
     ]]
         

       ]
      ]
   
   
  
  ask turtles [
    let whom whoms (who)
  
     ask patch-here[set plabel replace-item 4 plabel whom]]
  getvariables
  NextTurn
  printturn
end
to-report whoms [whos]
  if (whos < 4 and whos > -1) [report 1]
    if (whos < 8 and whos > 3) [report 2]
    if (whos < 12 and whos > 7) [report 3]
    if (whos < 16 and whos > 11) [report 4]
end
 to printturn
   Print (word "It's The turn of the " getcolor(playersturn) " Player (" playersturn ")")  
 end
to NextTurn
  if (empty? tab_inside and empty? tab_out and empty? tab_dhayem)[Winneris(playersturn)]
  if (movetonext) [
  ifelse (playersturn = 4)[set playersturn 1][set playersturn playersturn + 1]]
end

to-report getcolor [team]
  if team = 1 [report "Yellow"]
  if team = 2 [report "Blue"]
  if team = 3 [report "Red"]
  if team = 4 [report "Green"]
end

to Winneris[team]
  clear-drawing
  import-drawing "/Dice/Start.PNG"
  import-drawing "/Dice/End.PNG"
  print (word "The Winner is the " getcolor (team) " Team (Player " team ")")
  user-message (word "The Winner is the " getcolor (team) " Team (Player " team ")")
end
@#$#@#$#@
GRAPHICS-WINDOW
266
25
726
506
-1
-1
30.0
1
0
1
1
1
0
1
1
1
0
14
0
14
0
0
1
ticks
10.0

BUTTON
152
185
215
218
Start
setup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
150
267
215
301
Move
Move
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

@#$#@#$#@
## WHAT IS IT?

(a general understanding of what the model is trying to show or explain)

## HOW IT WORKS

(what rules the agents use to create the overall behavior of the model)

## HOW TO USE IT

(how to use the model, including a description of each of the items in the Interface tab)

## THINGS TO NOTICE

(suggested things for the user to notice while running the model)

## THINGS TO TRY

(suggested things for the user to try to do (move sliders, switches, etc.) with the model)

## EXTENDING THE MODEL

(suggested things to add or change in the Code tab to make the model more complicated, detailed, accurate, etc.)

## NETLOGO FEATURES

(interesting or unusual features of NetLogo that the model uses, particularly in the Code tab; or where workarounds were needed for missing features)

## RELATED MODELS

(models in the NetLogo Models Library and elsewhere which are of related interest)

## CREDITS AND REFERENCES

(a reference to the model's URL on the web if it has one, as well as any other necessary credits, citations, and links)
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

frme
false
0
Rectangle -7500403 false true 0 0 300 300

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270

@#$#@#$#@
NetLogo 5.0.4
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180

@#$#@#$#@
0
@#$#@#$#@
