globals [ l m k p q r s w x y z a b c d e1 f g h]
breed [ tractors tractor ]
breed [ ox-carts ox-cart ]
breed [ sps sp ]
breed [ cans can ]

to setup
  clear-all
  setup-patches
  setup-turtles
  set l 1
  set m 1
  set p 2150
  set q 3500
  set a 0
  set b 0
  reset-ticks
end
to setup-patches
  ask patches [ set pcolor brown
    if pxcor = 0 [ set pcolor black ]
  ]
end
to setup-turtles
  set-default-shape tractors "bulldozer top"
  create-tractors 1
  [
    set size 1.5
    setxy -16 16
    set color red
  ]
  set-default-shape ox-carts "cow skull"
  create-ox-carts 1
  [
    set size 1.5
    setxy 1 16
    set color white
  ]
end
to go
  if ticks >= 1023 [ stop ]
  ask tractors [ifelse l = 1 [ move-trac ] [ move-trac1 ]]
  ask ox-carts [ifelse m = 1 [ move-ox ] [ move-ox1 ]]
  tick
end

to move-trac
  ask tractors [ ifelse (xcor + 1) = 1 and ycor = 16 [ set a 0 ] [
  ask tractors [ if xcor = pxcor and ycor = pycor [ ask patch pxcor pycor [ set pcolor 34 ]]]
  ask tractors [ if xcor = pxcor and ycor = pycor [ ask patch (pxcor) (pycor - 1) [ set pcolor 34 ]]]
  ask tractors [ set heading 180 fd 2 if ycor = -16 [ set heading 90 fd 1 set l 2]]
  ask tractors [ if ycor = -16 [ ask patch (pxcor - 1) (pycor) [ set pcolor 34 ]]] ]]
  set a a + 2
end
to move-trac1
  ask tractors [ ifelse (xcor + 1) = 1 and ycor = 16 [ set a 0 ] [
  ask tractors [ if xcor = pxcor and ycor = pycor [ ask patch pxcor pycor [ set pcolor 34 ]]]
  ask tractors [ if xcor = pxcor and ycor = pycor [ ask patch (pxcor) (pycor + 1) [ set pcolor 34 ]]]
  ask tractors [ set heading 0 fd 2 if ycor = 16 [ set heading 90 fd 1 set l 1] ]
  ask tractors [ if ycor = 16 [ ask patch (pxcor - 1) pycor [ set pcolor 34 ]]] ]]
  set a a + 2
end

to move-ox
  ask ox-carts [ ifelse (xcor) = -16 and (ycor) = 16 [ ] [
  ask ox-carts [ if xcor = pxcor and ycor = pycor [ ask patch pxcor pycor [ set pcolor 34 ]]]
  ask ox-carts [ if xcor = pxcor and ycor = pycor [ ask patch (pxcor) (pycor - 1) [ set pcolor 34 ]]]
  ask ox-carts [ set heading 180 fd 0.5 if ycor = -16 [ set heading 90 fd 1 set m 2]]
  ask ox-carts [ if ycor = -16 [ ask patch (pxcor - 1) (pycor) [ set pcolor 34 ]]] ]]
  set b b + .5
end
to move-ox1
  ask ox-carts [ ifelse (xcor) = -16 and (ycor)= 16 [ ] [
  ask ox-carts [ if xcor = pxcor and ycor = pycor [ ask patch pxcor pycor [ set pcolor 34 ]]]
  ask ox-carts [ if xcor = pxcor and ycor = pycor [ ask patch (pxcor) (pycor + 1) [ set pcolor 34 ]]]
  ask ox-carts [ set heading 0 fd 0.5 if ycor = 16 [ set heading 90 fd 1 set m 1]]
  ask ox-carts [ if ycor = 16 [ ask patch (pxcor - 1) pycor [ set pcolor 34 ]]] ]]
  set b b + .5
end
to m1
  clear-all
  import-drawing "1.jpg"
end

;;
to setup1
  clear-all
  setup-patches1
  setup-turtles1
  set r 25000
  set s 2000
  set c 0
  set d 0
  reset-ticks
end

to setup-patches1
  ask patches [ set pcolor 34
    if pxcor = 0 [  set  pcolor black ]
  ]
end
to setup-turtles1
  set-default-shape sps "line"
  create-sps 1
  [
    set size 33
    setxy -4 random-ycor
    set color black
  ]
  create-sps 1
  [
    set size 33
    setxy -8 random-ycor
    set color black
  ]
  create-sps 1
  [
    set size 33
    setxy -12 random-ycor
    set color black
  ]

  set-default-shape cans "line"
  create-cans 1
  [
    set size 40
    setxy 2.29 random-ycor
  ]
  create-cans 1
  [
    set size 40
    setxy 4.58 random-ycor
  ]
  create-cans 1
  [
    set size 40
    setxy 6.87 random-ycor
  ]
  create-cans 1
  [
    set size 40
    setxy 9.16 random-ycor
  ]
  create-cans 1
  [
    set size 40
    setxy 11.45 random-ycor
  ]
  create-cans 1
  [
    set size 40
    setxy 13.74 random-ycor
  ]

  set-default-shape cans "line2"
  create-cans 1
  [
    set size 15
    setxy 8 12.8
    set color grey
  ]
  create-cans 1
  [
    set size 15
    setxy 8 9.6
    set color grey
  ]
  create-cans 1
  [
    set size 15
    setxy 8 6.4
    set color grey
  ]
  create-cans 1
  [
    set size 15
    setxy 8 3.2
    set color grey
  ]
  create-cans 1
  [
    set size 15
    setxy 8 0
    set color grey
  ]
  create-cans 1
  [
    set size 15
    setxy 8 -3.2
    set color grey
  ]
   create-cans 1
  [
    set size 15
    setxy 8 -6.4
    set color grey
  ]
  create-cans 1
  [
    set size 15
    setxy 8 -9.6
    set color grey
  ]
  create-cans 1
  [
    set size 15
    setxy 8 -12.8
    set color grey
  ]
 end

to go1
  if ticks >= 600 [ stop ]
  blue1
  blue2
  tick
end
to blue1
  ask patches [ ifelse (pxcor = 0) [ ] [
    if pxcor < 0 [if random 100 < 5 [ set pcolor blue ]]]]
  ifelse ticks < 149 [ set c c + 5 ] [ set c 0 ]
end
to blue2
  ask patches [ ifelse (pxcor = 0) [ ] [
    if pxcor > 0 [if random 100 < 1 [ set pcolor blue ]]]]
  set d d + 1
end
to m2
  clear-all
  import-drawing "2.jpg"
end


;;
to setup2
  clear-all
  setup-patches2
  setup-turtles2
  set l 1
  set m 1
  set w 1000
  set x 400
  set e1 0
  set f 0
  reset-ticks
end
to setup-patches2
  ask patches [ set pcolor 66
    if pxcor = 0 [ set pcolor black ]
  ]
end
to setup-turtles2
  set-default-shape tractors "truck cab top"
  create-tractors 1
  [
    set size 1.7
    setxy -16 16
    set color red
  ]
  set-default-shape ox-carts "person"
  create-ox-carts 1
  [
    set size 1.5
    setxy 1 16
    set color white
  ]
end
to go2
  if ticks >= 1023 [ stop ]
  ask tractors [ifelse l = 1 [ move-trac10 ] [ move-trac11 ]]
  ask ox-carts [ifelse m = 1 [ move-ox10 ] [ move-ox11 ]]
  tick
end

to move-trac10
  ask tractors [ ifelse (xcor + 1) = 1 and ycor = 16 [ set e1 0 ] [
  ask tractors [ if xcor = pxcor and ycor = pycor [ ask patch pxcor pycor [ set pcolor 63 ]]]
  ask tractors [ if xcor = pxcor and ycor = pycor [ ask patch (pxcor) (pycor - 1) [ set pcolor 63 ]]]
  ask tractors [ set heading 180 fd 2 if ycor = -16 [ set heading 90 fd 1 set l 2]]
  ask tractors [ if ycor = -16 [ ask patch (pxcor - 1) (pycor) [ set pcolor 63 ]]] ]]
  set e1 e1 + 2
end
to move-trac11
  ask tractors [ ifelse (xcor + 1) = 1 and ycor = 16 [ set e1 0 ] [
  ask tractors [ if xcor = pxcor and ycor = pycor [ ask patch pxcor pycor [ set pcolor 63 ]]]
  ask tractors [ if xcor = pxcor and ycor = pycor [ ask patch (pxcor) (pycor + 1) [ set pcolor 63 ]]]
  ask tractors [ set heading 0 fd 2 if ycor = 16 [ set heading 90 fd 1 set l 1] ]
  ask tractors [ if ycor = 16 [ ask patch (pxcor - 1) pycor [ set pcolor 63 ]]] ]]
  set e1 e1 + 2
end

to move-ox10
  ask ox-carts [ ifelse (xcor) = -16 and (ycor) = 16 [ ] [
  ask ox-carts [ if xcor = pxcor and ycor = pycor [ ask patch pxcor pycor [ set pcolor 63 ]]]
  ask ox-carts [ if xcor = pxcor and ycor = pycor [ ask patch (pxcor) (pycor - 1) [ set pcolor 63 ]]]
  ask ox-carts [ set heading 180 fd 0.5 if ycor = -16 [ set heading 90 fd 1 set m 2]]
  ask ox-carts [ if ycor = -16 [ ask patch (pxcor - 1) (pycor) [ set pcolor 63 ]]] ]]
  set f f + .5
end
to move-ox11
  ask ox-carts [ ifelse (xcor) = -16 and (ycor)= 16 [ ] [
  ask ox-carts [ if xcor = pxcor and ycor = pycor [ ask patch pxcor pycor [ set pcolor 63 ]]]
  ask ox-carts [ if xcor = pxcor and ycor = pycor [ ask patch (pxcor) (pycor + 1) [ set pcolor 63 ]]]
  ask ox-carts [ set heading 0 fd 0.5 if ycor = 16 [ set heading 90 fd 1 set m 1]]
  ask ox-carts [ if ycor = 16 [ ask patch (pxcor - 1) pycor [ set pcolor 63 ]]] ]]
  set f f + .5
end
to m3
  clear-all
  import-drawing "3.jpg"
end


;;
to setup3
  clear-all
  setup-patches3
  setup-turtles3
  set l 1
  set k 16
  set y 5000
  set z 3000
  set g 0
  set h 0
  reset-ticks
end
to setup-patches3
  ask patches [ set pcolor 63
    if pxcor = 0 [ set pcolor black ]]
end
to setup-turtles3
   set-default-shape tractors "train switcher engine"
  create-tractors 1
  [
    set size 2
    setxy -16 16
    set color 25
  ]
  set-default-shape ox-carts "person"
  create-ox-carts (16)
  [
    set size 1.5
    setxy 8 16
    set color  white
  ]
  ask ox-cart 1 [ setxy 1 16]
  ask ox-cart 2 [ setxy 2 16]
  ask ox-cart 3 [ setxy 3 16]
  ask ox-cart 4 [ setxy 4 16]
  ask ox-cart 5 [ setxy 5 16]
  ask ox-cart 6 [ setxy 6 16]
  ask ox-cart 7 [ setxy 7 16]
  ask ox-cart 8 [ setxy 8 16]
  ask ox-cart 9 [ setxy 9 16]
  ask ox-cart 10 [ setxy 10 16]
  ask ox-cart 11 [ setxy 11 16]
  ask ox-cart 12 [ setxy 12 16]
  ask ox-cart 13 [ setxy 13 16]
  ask ox-cart 14 [ setxy 14 16]
  ask ox-cart 15 [ setxy 15 16]
  ask ox-cart 16 [ setxy 16 16]
end
to go3
  if ticks >= 333 [ stop ]
  ask tractors [ifelse l = 1 [ move-trac20 ] [ move-trac21 ]]
  man
  tick
end

to move-trac20
  ask tractors [ ifelse (xcor + 1) = 1 and ycor = 16 [ set g 0 ] [
  ask tractors [ if xcor = pxcor and ycor = pycor [ ask patch pxcor pycor [ set pcolor brown ]]]
  ask tractors [ if xcor = pxcor and ycor = pycor [ ask patch (pxcor) (pycor - 1) [ set pcolor brown ]]]
  ask tractors [ set heading 180 fd 2 if ycor = -16 [ set heading 90 fd 1 set l 2]]
  ask tractors [ if ycor = -16 [ ask patch (pxcor - 1) (pycor) [ set pcolor brown ]]] ]]
  set g g + 2
end
to move-trac21
  ask tractors [ ifelse (xcor + 1) = 1 and ycor = 16 [ set g 0 ] [
  ask tractors [ if xcor = pxcor and ycor = pycor [ ask patch pxcor pycor [ set pcolor brown ]]]
  ask tractors [ if xcor = pxcor and ycor = pycor [ ask patch (pxcor) (pycor + 1) [ set pcolor brown ]]]
  ask tractors [ set heading 0 fd 2 if ycor = 16 [ set heading 90 fd 1 set l 1] ]
  ask tractors [ if ycor = 16 [ ask patch (pxcor - 1) pycor [ set pcolor brown ]]] ]]
  set g g + 2
end
to man
  ask ox-carts [ set heading 180 fd .1 ask patch xcor ycor [set pcolor brown]]
  set h h + 1.6
end
to m4
  clear-all
  import-drawing "4.jpg"
end
@#$#@#$#@
GRAPHICS-WINDOW
428
58
903
534
-1
-1
14.152
1
10
1
1
1
0
1
1
1
-16
16
-16
16
0
0
1
ticks
30.0

BUTTON
81
66
308
99
LAND PREPARATION AND SEEDING
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
329
66
407
99
LAUNCH
go
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
1061
63
1163
96
IRRIGATION
setup1
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
1241
62
1319
95
LAUNCH
go1
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
97
321
291
354
FERTILIZER AND PESTISIDES
setup2
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
329
320
407
353
LAUNCH
go2
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
1064
318
1168
351
HARVESTING
setup3
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
1244
318
1322
351
LAUNCH
go3
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
456
37
660
79
MODERN AGRICULTURE 
17
16.0
1

TEXTBOX
674
36
925
78
TRADITIONAL AGRICULTURE
17
16.0
1

TEXTBOX
598
10
748
36
CAMPARISON
21
15.0
1

PLOT
8
165
198
285
MODERN AGRICULTURE
TIME
WORK
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"default" 1.0 1 -11053225 true "" "plot a"

BUTTON
7
66
62
99
1
m1
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
925
63
980
96
2
m2
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
7
321
62
354
3
m3
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
924
318
979
351
4
m4
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

MONITOR
960
363
1086
408
COST PER HECTARE
y
17
1
11

MONITOR
960
109
1086
154
COST PER HECTARE
r
17
1
11

MONITOR
252
364
378
409
COST PER HECTARE
x
17
1
11

MONITOR
1167
363
1293
408
COST PER HECTARE
z
17
1
11

MONITOR
255
113
381
158
COST PER HECTARE
q
17
1
11

MONITOR
1169
110
1295
155
COST PER HECTARE
s
17
1
11

MONITOR
43
111
169
156
COST PER HECTARE
p
17
1
11

MONITOR
45
364
171
409
COST PER HECTARE
w
17
1
11

PLOT
219
166
408
286
TRADITIONAL AGRICULTURE
TIME
WORK
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"default" 1.0 1 -16777216 true "" "plot b"

PLOT
7
417
198
537
MODERN AGRICULTURE
TIME
WORK
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"default" 1.0 1 -16777216 true "" "plot e1"

PLOT
215
417
406
537
TRADITIONAL AGRICULTURE
TIME
WORK
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"default" 1.0 1 -16777216 true "" "plot f"

PLOT
928
163
1117
283
MODERN AGRICULTURE
TIME
WORK
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"default" 1.0 1 -16777216 true "" "plot c"

PLOT
1135
163
1325
283
TRADITIONAL AGRICULTURE
TIME
WORK
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"default" 1.0 1 -16777216 true "" "plot d"

PLOT
926
417
1117
537
MODERN AGRICULTURE
TIME
WORK
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"default" 1.0 1 -16777216 true "" "plot g"

PLOT
1135
416
1325
536
TRADITIONAL AGRICULTURE
TIME
WORK
0.0
10.0
0.0
10.0
true
false
"" ""
PENS
"default" 1.0 1 -16777216 true "" "plot h"

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

bulldozer top
false
0
Rectangle -7500403 true true 45 45 105 240
Rectangle -16777216 false false 45 45 105 240
Rectangle -7500403 true true 195 45 255 240
Rectangle -16777216 false false 195 45 255 240
Line -16777216 false 255 225 45 225
Line -16777216 false 255 195 45 195
Line -16777216 false 255 240 45 240
Line -16777216 false 255 60 45 60
Line -16777216 false 255 75 45 75
Line -16777216 false 255 105 45 105
Line -16777216 false 255 150 45 150
Polygon -1184463 true false 210 240 225 210 225 60 180 45 120 45 75 60 75 210 90 240
Polygon -16777216 false false 75 210 90 240 89 54 75 60
Polygon -16777216 false false 225 210 210 240 211 54 225 60
Polygon -16777216 false false 211 53 184 46 117 45 89 54 89 89 210 90
Rectangle -16777216 false false 90 210 210 240
Rectangle -1184463 true false 105 210 120 270
Rectangle -16777216 false false 180 210 195 270
Rectangle -1184463 true false 180 210 195 255
Rectangle -16777216 false false 105 210 120 255
Polygon -16777216 true false 105 195 120 180 180 180 195 195
Polygon -16777216 true false 195 101 180 112 120 112 105 101
Polygon -16777216 true false 105 180 120 165 120 120 105 105
Polygon -16777216 true false 195 180 180 165 180 120 195 105
Line -1184463 false 195 135 105 135
Circle -16777216 true false 173 60 14
Polygon -1184463 true false 195 285 240 270 240 255 60 255 60 270 105 285
Polygon -16777216 false false 195 285 240 270 240 255 60 255 60 270 105 285

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

car top
true
0
Polygon -7500403 true true 151 8 119 10 98 25 86 48 82 225 90 270 105 289 150 294 195 291 210 270 219 225 214 47 201 24 181 11
Polygon -16777216 true false 210 195 195 210 195 135 210 105
Polygon -16777216 true false 105 255 120 270 180 270 195 255 195 225 105 225
Polygon -16777216 true false 90 195 105 210 105 135 90 105
Polygon -1 true false 205 29 180 30 181 11
Line -7500403 false 210 165 195 165
Line -7500403 false 90 165 105 165
Polygon -16777216 true false 121 135 180 134 204 97 182 89 153 85 120 89 98 97
Line -16777216 false 210 90 195 30
Line -16777216 false 90 90 105 30
Polygon -1 true false 95 29 120 30 119 11

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
Polygon -7500403 true true 193 200 249 197 249 179 196 177 187 166 189 140 191 93 179 78 211 72 209 49 181 48 149 37 120 25 89 25 72 45 84 103 75 179 76 198 64 252 81 272 103 293 121 285 121 255 118 242 167 224
Polygon -7500403 true true 210 73 251 86 249 62 208 48
Polygon -7500403 true true 114 25 195 16 204 9 213 23 200 25 123 39

cow skull
false
0
Polygon -7500403 true true 150 90 75 105 60 150 75 210 105 285 195 285 225 210 240 150 225 105
Polygon -16777216 true false 150 150 90 195 90 150
Polygon -16777216 true false 150 150 210 195 210 150
Polygon -16777216 true false 105 285 135 270 150 285 165 270 195 285
Polygon -7500403 true true 240 150 263 143 278 126 287 102 287 79 280 53 273 38 261 25 246 15 227 8 241 26 253 46 258 68 257 96 246 116 229 126
Polygon -7500403 true true 60 150 37 143 22 126 13 102 13 79 20 53 27 38 39 25 54 15 73 8 59 26 47 46 42 68 43 96 54 116 71 126

cylinder
false
0
Circle -7500403 true true 0 0 300

div
false
0
Rectangle -7500403 true true 135 0 150 300

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
false
14
Line -7500403 false 150 0 150 300

line half
false
0
Line -7500403 true 0 150 150 150

line2
false
0
Line -7500403 true 0 150 315 150

link
true
0
Line -7500403 true 150 0 150 300

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
3
Rectangle -7500403 true false 30 30 270 270
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

train passenger engine
false
0
Rectangle -7500403 true true 0 180 300 195
Polygon -7500403 true true 283 161 274 128 255 114 231 105 165 105 15 105 15 150 15 195 15 210 285 210
Circle -16777216 true false 17 195 30
Circle -16777216 true false 50 195 30
Circle -16777216 true false 220 195 30
Circle -16777216 true false 253 195 30
Rectangle -16777216 false false 0 195 300 180
Rectangle -1 true false 11 111 18 118
Rectangle -1 true false 270 129 277 136
Rectangle -16777216 true false 91 195 210 210
Rectangle -16777216 true false 1 180 10 195
Line -16777216 false 290 150 291 182
Rectangle -16777216 true false 165 90 195 90
Rectangle -16777216 true false 290 180 299 195
Polygon -13345367 true false 285 180 267 158 239 135 180 120 15 120 16 113 180 113 240 120 270 135 282 154
Polygon -2674135 true false 284 179 267 160 239 139 180 127 15 127 16 120 180 120 240 127 270 142 282 161
Rectangle -16777216 true false 210 115 254 135
Line -7500403 true 225 105 225 150
Line -7500403 true 240 105 240 150

train switcher engine
false
0
Polygon -7500403 true true 255 90 255 120 255 150 247 170 149 177 52 169 45 150 45 105 45 90 240 90
Circle -16777216 true false 45 75 30
Circle -16777216 true false 75 75 30
Circle -16777216 true false 195 75 30
Circle -16777216 true false 225 75 30
Line -7500403 true 150 165 150 135
Rectangle -7500403 true true 120 105 180 210
Rectangle -16777216 true false 130 180 168 202
Line -7500403 true 150 210 150 150
Rectangle -16777216 false false 120 120 180 210
Rectangle -7500403 true true 30 105 270 120
Rectangle -16777216 false false 30 105 270 120
Line -16777216 false 30 150 30 120
Rectangle -1 true false 48 162 55 169
Rectangle -1 true false 245 162 252 169
Polygon -16777216 true false 45 121 73 131 73 142 45 132
Polygon -16777216 true false 45 138 73 148 73 159 45 149
Polygon -16777216 true false 255 138 227 148 227 159 255 149
Polygon -16777216 true false 255 121 227 131 227 142 255 132
Rectangle -16777216 true false 113 90 188 105
Rectangle -16777216 true false 21 105 36 120
Rectangle -16777216 true false 264 105 279 120
Line -16777216 false 270 150 270 120
Line -16777216 false 180 202 120 202

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

truck cab top
false
0
Rectangle -7500403 true true 70 45 227 120
Polygon -7500403 true true 150 8 118 10 96 17 90 30 75 135 75 195 90 210 150 210 210 210 225 195 225 135 209 30 201 17 179 10
Polygon -16777216 true false 94 135 118 119 184 119 204 134 193 141 110 141
Line -16777216 false 130 14 168 14
Line -16777216 false 130 18 168 18
Line -16777216 false 130 11 168 11
Line -16777216 false 185 29 194 112
Line -16777216 false 115 29 106 112
Line -16777216 false 195 225 210 240
Line -16777216 false 105 225 90 240
Polygon -16777216 true false 210 195 195 195 195 150 210 143
Polygon -16777216 false false 90 143 90 195 105 195 105 150 90 143
Polygon -16777216 true false 90 195 105 195 105 150 90 143
Line -7500403 true 210 180 195 180
Line -7500403 true 90 180 105 180
Line -16777216 false 212 44 213 124
Line -16777216 false 88 44 87 124
Line -16777216 false 223 130 193 112
Rectangle -7500403 true true 225 133 244 139
Rectangle -7500403 true true 56 133 75 139
Rectangle -7500403 true true 120 210 180 240
Rectangle -7500403 true true 93 238 210 270
Rectangle -16777216 true false 200 217 224 278
Rectangle -16777216 true false 76 217 100 278
Circle -16777216 false false 135 240 30
Line -16777216 false 77 130 107 112
Rectangle -16777216 false false 107 149 192 210
Rectangle -1 true false 180 9 203 17
Rectangle -1 true false 97 9 120 17

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
NetLogo 6.0.1
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
