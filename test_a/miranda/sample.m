max2 :: num -> num -> num
max2 a b = a, if a>b
         = b, otherwise

max3 :: num -> num -> num -> num
max3 a b c = max2 (max2 a b) (max2 a c)

multiply :: num -> num -> num
multiply 0 b = 0
multiply a b = a + (multiply (a-1) b)

fak :: num -> num
fak 0 = 1
fak 1 = 1
fak n = n * (fak n-1)



itemnumber::[*]->num
itemnumber [] = 0
itemnumber (a:x) = 1 + itemnumber x

weekday::= Mo|Tu|We|Th|Fr|Sa|Su

isWorkDay :: weekday -> bool
isWorkDay Sa = False
isWorkDay Su = False
isWorkDay anyday = True


tree * ::= E| N (tree *) * (tree *)

nodecount :: tree * -> num
nodecount E = 0
nodecount (N l w r) = nodecount l + 1 + nodecount r

emptycount :: tree * -> num
emptycount E = 1
emptycount (N l w r) = emptycount l + emptycount r



treeExample = N ( N (N E 1 E) 3 (N E 4 E)) 5 (N (N E 6 E) 8 (N E 9 E))
weekdayTree = N ( N (N E Mo E) Tu (N E We E)) Th (N (N E Fr E) Sa (N E Su))

insert :: * -> stree * -> stree *
insert x E = N E x E
insert x (N l w E) = N l w x
insert x (N E w r) = N x w r
insert x (N l w r) = insert x l , if x <w
                   = insert x r , otherwise

list2searchtree :: [*] -> tree *
list2searchtree [] = E
list2searchtree [x] = N E x E
list2searchtree (x:xs) = insert x (list2searchtree xs)

maxel :: tree * -> *
maxel E = error "empty"
maxel (N l w E) = w
maxel (N l w r) = maxel r

minel :: tree * -> *
minel E = error "empty"
minel (N E w r) = w
minel (N l w r) = minel l
