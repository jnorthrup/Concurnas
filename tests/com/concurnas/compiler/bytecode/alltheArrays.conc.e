//##1. big ArrayTest
1
2
2
[1.0 2.0 4.0 5.0]
[1 2 3 4]
[99 2 3 4 5 6 7]
[1 99 3 ; 1 2 3 ; 1 2 3]
[1 99 3 ; 1 2 3 ; 1 2 3]
[100 2 3 4 5 6 7]
[1 101 3 ; 1 2 3 ; 1 2 3]
[1 101 3 ; 1 2 3 ; 1 2 3]
[1 2 3 ; 44 55 66 77 ; 1 2 3]
[1 2 3 16 5 6 7]
[1 2 9 ; 1 2 3 ; 1 2 3]
[1 2 9 ; 1 2 3 ; 1 2 3]
[99 88 77 4 5 6 7]
[1 2 3 ; 99 88 77 ; 1 2 3]
[1 2 3 ; 99 88 77 ; 1 2 3]
[1 2 3 ; 99 88 77 ; 234 5235 55]
[1 2 3 4 99 88 77]
[1 2 3 ; 1 99 88 ; 1 2 3]
[1 2 3 ; 1 99 88 ; 1 2 3]
[99 88 77 99 5 6 7]
[1 2 3 ; 99 88 77 ; 1 2 3]
[1 2 3 ; 99 88 77 ; 1 2 3]
[2 3]


~~~~~
//##2. big ArrayTest factor pre and postfix
[2 0 2 0 1 1 1 1 1 1]
[2.0 0.0 2.0 0.0 1.0 1.0 1.0 1.0 1.0 1.0]
[2 0 2 0 1 1 1 1 1 1]
[2.0 0.0 2.0 0.0 1.0 1.0 1.0 1.0 1.0 1.0]
~~~
[1.0 1.0 2.0 0.0 1.0 1.0 2.0 0.0 1.0 1.0 2.0 0.0 1.0 1.0 2.0 0.0]
~~~
-1

~~~~~
//##3. arrays in functions
[99 99 99]:[3 2 1]

~~~~~
//##3. arrays in funcs 2 - something sexy - wow, amazing this works
[2 3 3]:2

~~~~~
//##4 array length field
3

~~~~~
//##5 array str assignment
[hi ][2d hello  ; 1hi there ]

~~~~~
//##6 acting on arraylist
[[5, 1], [2, 3], [1, 2, 3], [2, 3, 4, 5]]

~~~~~
//##7 acting on arraylist ret arraylist, works ok
[[2, 3, 4, 5, 6], [3, 4, 5, 6, 7], [4, 5, 6, 7, 8], [5, 6, 7, 8, 9]]
[5, 6, 7, 8, 9]
6
[[3, 4, 5, 6, 7], [4, 5, 6, 7, 8], [5, 6, 7, 8, 9]]


~~~~~
//##8 use of Integer in place of int - ar const
[0 0 0 0]

~~~~~
//##8 use of Integer in place of int - ar ref
2[2 3 4 5 6 7 8 9 10][1 2 3 4 5][2 3 4]

~~~~~
//##8 use of Integer in place of int - list ref
2[2, 3, 4, 5, 6, 7, 8, 9, 10][1, 2, 3, 4, 5][2, 3, 4]

~~~~~
//##9 all the list assignment fiddles etc
[[100, 100, 3, 4, 5, 6, 7, 8, 9, 10] [101, 102, 3, 4, 5, 6, 7, 8, 9, 10] [-99, -98, 3, 4, 5, 6, 7, 8, 9, 10] [-99, -98, 3, 4, 5, 6, 7, 8, 9, 10] [1, 4, 9, 4, 5, 6, 7, 8, 9, 10] [wassup, 2hi, 3600.0, 4600, 5700.0, 6, 7, 8, 9, 10] 100 102 [100, 102, 3, 4, 5, 6, 7, 8, 9, 10][true, true][true, true] [88 10 10][99, 88, 10]]

~~~~~
//##10 list pre postfix operations
[1, -1, 1, -1, 0, 0, 0, 0, 0, 0][0, 0, 2, -2, 0, 0, 0, 0, 0, 0][1 -1 1 -1]
[1, -1, 1, -1, 0, 0, 0, 0, 0, 0][0, 0, 2, -2, 0, 0, 0, 0, 0, 0][1 -1 1 -1]

~~~~~
//##11 set int to long casty fun
[5 2][5 2][5, 0]

~~~~~
//##2d 6 acting on arraylist
[[5, 1], [2, 3], [1, 2, 3], [2, 3, 4, 5]]

~~~~~
//##2d 9 all the list assignment fiddles etc
[[100, 100, 3, 4, 5, 6, 7, 8, 9, 10]]
[[101, 102, 3, 4, 5, 6, 7, 8, 9, 10]]
[[-99, -98, 3, 4, 5, 6, 7, 8, 9, 10]]
[[-99, -98, 3, 4, 5, 6, 7, 8, 9, 10]]
[[1, 4, 9, 4, 5, 6, 7, 8, 9, 10]]
[[wassup, 2hi, 3600.0, 4600, 5700.0, 6, 7, 8, 9, 10]]
[[100, 102, 3, 4, 5, 6, 7, 8, 9, 10]][true true][true true]

~~~~~
//##2d 10 list pre postfix operations
[[1, -1, 1, -1, 0, 0, 0, 0, 0, 0]][[0, 0, 2, -2, 0, 0, 0, 0, 0, 0]][1 -1 1 -1]
[[1, -1, 1, -1, 0, 0, 0, 0, 0, 0]][[0, 0, 2, -2, 0, 0, 0, 0, 0, 0]][1 -1 1 -1]

~~~~~
//##12a all the array types
[[null null null ; null null null], 
[null null null ; null null null], 
[null null null], 
[], 
[], 
[], 
[null null null null], 
[null null null null]]

~~~~~
//##12 array of lists
[[5 1] [2, 3] [1, 2, 3] [2, 3, 4, 5]]
::
[[[100, 100, 3, 4, 5, 6, 7, 8, 9, 10]]]
[[[101, 102, 3, 4, 5, 6, 7, 8, 9, 10]]]
[[[-99, -98, 3, 4, 5, 6, 7, 8, 9, 10]]]
[[[-99, -98, 3, 4, 5, 6, 7, 8, 9, 10]]]
[[[1, 4, 9, 4, 5, 6, 7, 8, 9, 10]]]
[[[wassup, 2hi, 3600.0, 4600, 5700.0, 6, 7, 8, 9, 10]]]
[[[100, 102, 3, 4, 5, 6, 7, 8, 9, 10]]][true true][true true]
::
[[[1, -1, 1, -1, 0, 0, 0, 0, 0, 0]]][[[0, 0, 2, -2, 0, 0, 0, 0, 0, 0]]][1 -1 1 -1]
[[[1, -1, 1, -1, 0, 0, 0, 0, 0, 0]]][[[0, 0, 2, -2, 0, 0, 0, 0, 0, 0]]][1 -1 1 -1]

~~~~~
//##12 list of array
[[5 [1 2 3 4 5]] [2 3] [1 2 3] [2 3 4 5]]
::
[[5 [1 2 3 4 5]] 2 3 [1 2 3] [2 3 4 5]]
::
[[100 100 0 0 ; 0 0 0 0], [null null null null ; null null null null]]
[[166 166 0 0 ; 0 0 0 0], [null null null null ; null null null null]]
[[34 34 0 0 ; 0 0 0 0], [null null null null ; null null null null]]
[[300 300 0 0 ; 0 0 0 0], [null null null null ; null null null null]]
[[100 10000 0 0 ; 0 0 0 0], [null null null null ; null null null null]]
[[wassup hi 600.0  ; 600   ], [null null700.0 null null ; null null null null]]
::
[[1 -1 1 -1 ; 0 0 0 0], [null null null null ; null null null null]][[0 0 2 -2 ; 0 0 0 0], [null null null null ; null null null null]][1 -1 1 -1]
[[1 -1 1 -1 ; 0 0 0 0], [null null null null ; null null null null]][[0 0 2 -2 ; 0 0 0 0], [null null null null ; null null null null]][1 -1 1 -1]

~~~~~
//##12 list of array - with prim type
[[5 [1 2 3 4 5]] [2 3] [1 2 3] [2 3 4 5]]
::
[[5 [1 2 3 4 5]] [2 3] [1 2 3] [2 3 4 5]]
::
[[100 100 0 0 ; 0 0 0 0], [0 0 0 0 ; 0 0 0 0]]
[[166 166 0 0 ; 0 0 0 0], [0 0 0 0 ; 0 0 0 0]]
[[34 34 0 0 ; 0 0 0 0], [0 0 0 0 ; 0 0 0 0]]
[[300 300 0 0 ; 0 0 0 0], [0 0 0 0 ; 0 0 0 0]]
[[100 10000 0 0 ; 0 0 0 0], [0 0 0 0 ; 0 0 0 0]]
[[wassup hi 600.0  ; 600   ], [null null700.0 null null ; null null null null]]
::
[[1 -1 1 -1 ; 0 0 0 0], [0 0 0 0 ; 0 0 0 0]][[0 0 2 -2 ; 0 0 0 0], [0 0 0 0 ; 0 0 0 0]][1 -1 1 -1]
[[1 -1 1 -1 ; 0 0 0 0], [0 0 0 0 ; 0 0 0 0]][[0 0 2 -2 ; 0 0 0 0], [0 0 0 0 ; 0 0 0 0]][1.0 -1.0 1.0 -1.0]

~~~~~
//##12 list of array - with alternative array syntax
[[5 [1 2 3 4 5]] [2 3] [1 2 3 4 5 ; null ; null] [2 3 4 5]]
::
[[5 [1 2 3 4 5]] [2 3] [1 2 3 4 5 ; null ; null] [2 3 4 5]]
::
[[100 100 0 0 ; 0 0 0 0], [0 0 0 0 ; 0 0 0 0]]
[[166 166 0 0 ; 0 0 0 0], [0 0 0 0 ; 0 0 0 0]]
[[34 34 0 0 ; 0 0 0 0], [0 0 0 0 ; 0 0 0 0]]
[[300 300 0 0 ; 0 0 0 0], [0 0 0 0 ; 0 0 0 0]]
[[100 10000 0 0 ; 0 0 0 0], [0 0 0 0 ; 0 0 0 0]]
[[wassup hi 600.0  ; 600   ], [null null700.0 null null ; null null null null]]
::
[[1 -1 1 -1 ; 0 0 0 0], [0 0 0 0 ; 0 0 0 0]][[0 0 2 -2 ; 0 0 0 0], [0 0 0 0 ; 0 0 0 0]][1, -1, 1, -1]
[[1 -1 1 -1 ; 0 0 0 0], [0 0 0 0 ; 0 0 0 0]][[0 0 2 -2 ; 0 0 0 0], [0 0 0 0 ; 0 0 0 0]][1.0, -1.0, 1.0, -1.0]

~~~~~
//##13 dict standard put get
direction

~~~~~
//##14 dict posh put get
direction:: direction2:: {hi->there, hi2->there2, one->direction, two->direction2}

~~~~~
//##14 dict posh put get int Int
{1->0, 2->0, 3->99, 4->99}9999
{1->0, 2->0, 3->99, 4->99}9999
{1->0, 2->0, 3->99, 4->99}9999
{1->0, 2->0, 3->99, 4->99}9999

~~~~~
//##14 put variants plus minus etc
{hi->there bobbins1212, hi2->}
{1->25, 2->10, 3->25}
{1->25, 2->10, 3->25}
{1->25, 2->10, 3->25}
{1->25, 2->10, 3->25}

~~~~~
//##15 map prefix and postfix operations
{0->1, 1->-1, 2->1, 3->-1}, {0->0, 1->0, 2->2, 3->-2}[1 -1 1 -1]
{0->1, 1->-1, 2->1, 3->-1}, {0->0, 1->0, 2->2, 3->-2}[1 -1 1 -1]

~~~~~
//##16 hashmap via a generic holder
xxx1:xxx1

~~~~~
//##17 dict access to contents via nesting simple case
{one->{hi->there, hi2->there2}, two->{has->bosco, moi->heart}}
there
there

~~~~~
//##18 dict of arrays simple
{one->[1 2 3 4 5], two->[10 20 30 40 50]}
1
20
1
20

~~~~~
//##19 array of dicts
3 ::  [{0->{0->0, 1->1, 2->2, 3->3, 4->4, 5->5}}][4 3]
::
[{0->{0->100, 1->100, 2->2, 3->3, 4->4, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10}}]
[{0->{0->100, 1->101, 2->2, 3->3, 4->4, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10}}]
[{0->{0->-100, 1->-99, 2->2, 3->3, 4->4, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10}}]
[{0->{0->-100, 1->-99, 2->2, 3->3, 4->4, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10}}]
[{0->{0->0, 1->1, 2->4, 3->3, 4->4, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10}}]
[{0->{0->wassup, 1->1hi, 2->2600.0, 3->3600, 4->4700.0, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10}}]
[{0->{0->100, 1->101, 2->2, 3->3, 4->4, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10}}][true true][true true]
::
[{0->{0->1, 1->0, 2->3, 3->2, 4->4, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10}}][{0->{0->0, 1->1, 2->4, 3->1, 4->4, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10}}][3 2 3 2]
[{0->{0->1, 1->0, 2->3, 3->2, 4->4, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10}}][{0->{0->0, 1->1, 2->4, 3->1, 4->4, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10}}][3 2 3 2]

~~~~~
//##20 list of array of hashmap
[5, {0->0, 1->1, 2->3, 3->4, 4->5, 6->6}]
::
[[{0->100, 1->100, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}], [{0->0, 1->1, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}]]
[[{0->166, 1->166, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}], [{0->0, 1->1, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}]]
[[{0->34, 1->34, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}], [{0->0, 1->1, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}]]
[[{0->300, 1->300, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}], [{0->0, 1->1, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}]]
[[{0->10000, 1->10000, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}], [{0->0, 1->1, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}]]
[[{0->wassup, 1->1hi, 2->2600.0, 3->3} {0->0600, 1->1, 2->2, 3->3}], [{0->0, 1->1700.0, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}]]
::
[[{0->1, 1->0, 2->3, 3->2} {0->0, 1->1, 2->2, 3->3}], [{0->0, 1->1, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}]][[{0->0, 1->1, 2->4, 3->1} {0->0, 1->1, 2->2, 3->3}], [{0->0, 1->1, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}]][3 2 3 2]
[[{0->1, 1->0, 2->3, 3->2} {0->0, 1->1, 2->2, 3->3}], [{0->0, 1->1, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}]][[{0->0, 1->1, 2->4, 3->1} {0->0, 1->1, 2->2, 3->3}], [{0->0, 1->1, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}]][3 2 3 2]

~~~~~
//##19 array of dicts - alt syntax
3 ::  [{0->{0->0, 1->1, 2->2, 3->3, 4->4, 5->5}}][4, 3]
::
[{0->{0->100, 1->100, 2->2, 3->3, 4->4, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10}}]
[{0->{0->100, 1->101, 2->2, 3->3, 4->4, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10}}]
[{0->{0->-100, 1->-99, 2->2, 3->3, 4->4, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10}}]
[{0->{0->-100, 1->-99, 2->2, 3->3, 4->4, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10}}]
[{0->{0->0, 1->1, 2->4, 3->3, 4->4, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10}}]
[{0->{0->wassup, 1->1hi, 2->2600.0, 3->3600, 4->4700.0, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10}}]
[{0->{0->100, 1->101, 2->2, 3->3, 4->4, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10}}][true, true][true, true]
::
[{0->{0->1, 1->0, 2->3, 3->2, 4->4, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10}}][{0->{0->0, 1->1, 2->4, 3->1, 4->4, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10}}][3 2 3 2]
[{0->{0->1, 1->0, 2->3, 3->2, 4->4, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10}}][{0->{0->0, 1->1, 2->4, 3->1, 4->4, 5->5, 6->6, 7->7, 8->8, 9->9, 10->10}}][3 2 3 2]

~~~~~
//##20 list of array of hashmap -use alt syntax
[5, {0->0, 1->1, 2->3, 3->4, 4->5, 6->6}]
::
[[{0->100, 1->100, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}], [{0->0, 1->1, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}]]
[[{0->166, 1->166, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}], [{0->0, 1->1, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}]]
[[{0->34, 1->34, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}], [{0->0, 1->1, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}]]
[[{0->300, 1->300, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}], [{0->0, 1->1, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}]]
[[{0->10000, 1->10000, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}], [{0->0, 1->1, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}]]
[[{0->wassup, 1->1hi, 2->2600.0, 3->3} {0->0600, 1->1, 2->2, 3->3}], [{0->0, 1->1700.0, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}]]
::
[[{0->1, 1->0, 2->3, 3->2} {0->0, 1->1, 2->2, 3->3}], [{0->0, 1->1, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}]][[{0->0, 1->1, 2->4, 3->1} {0->0, 1->1, 2->2, 3->3}], [{0->0, 1->1, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}]][3 2 3 2]
[[{0->1, 1->0, 2->3, 3->2} {0->0, 1->1, 2->2, 3->3}], [{0->0, 1->1, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}]][[{0->0, 1->1, 2->4, 3->1} {0->0, 1->1, 2->2, 3->3}], [{0->0, 1->1, 2->2, 3->3} {0->0, 1->1, 2->2, 3->3}]][3 2 3 2]

~~~~~
//##21 ensure all key types are as expected
[1, 2][3, 4][true, true, true, true, true, true]
[{1->3, 2->4}, {1->3, 2->4}, [1, 2, 3], [4]]

~~~~~
//##22 map put stuff more of a reflection code test really
{add->more, hi->there, hi2->there2}

~~~~~
//##23 string to object map
{one->3, three->{1->[1, 2, 3], 2->[2, 3, 4]}}

~~~~~
//##24 dict custom functions
{10->10, 12->99, 13->88, 50->12, hi->99}Called:
put(x int, y Integer), put(x int, y int), put(x int, y int), put(x int, y String), get(x int), get(x Integer), 
:: 1099
{1->109, 2->109, 3->100, 4->100, 5->100}
{1->11, 2->11, 3->9, 4->10, 5->10}

~~~~~
//##25 dict doesnt intefere with erasure 
{hi->10, there->12}

~~~~~
//##26 lists can have custom set functions too
[31, 0, 0, 0, 0, 3, 3, 3, 0, 0]3031

~~~~~
//##27 bugfix for paranthesis used within array definitions
[[16 1 -2 4 5 -1 3 7 4 9 3 4], [16 -1 -2 -3 4 9 -3 4], [16 1 1 -2 4 5 -1 3 4 9 3 4]]

~~~~~
//##28 further bugfix for paranthesis used within array definitions
[90 70 70 9]