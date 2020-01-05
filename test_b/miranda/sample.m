||Traversing: going through values of tree,putting them in list

preorder,inorder,postorder :: tree * -> [*]
inorder E = []
inorder N l w r = inorder l ++ [w] ++ inorder r

preorder E = []
preorder N l w r = [w] ++ preorder l ++ preorder r

postorder E = []
postorder N l w r = postorder l ++ postorder r ++ [w]

height :: tree * -> num
height E = 0
height (N l w r) = 1 + max2 (height l) (height r)




amount :: num -> num
amount x = x ,if x >= 0
amount x = x*(-1), otherwise


and :: bool -> bool -> bool
and True True = True
and x y = False

|| A AVL-Tree is a tree where the difference between the of the child nodes is not higher than 1
|| i still have to test this

isAvl :: tree * -> bool
isAvl E = True
isAvl (N l w r) = and (isAvl l) (isAvl r), if amount ((nodecount l) - (nodecount r)) < 2
                = False, otherwise
                
                

                
delete :: * -> tree * -> tree *
delete x E = E
delete x (N E x E) = E
delete x (N E x r) = N E (minel r) (loeschen (minel r) r)
delete x (N l x r) = N (loeschen (maxel l) l) (maxel l) r
delete x (N l w r) = N (loeschen x l) w (loeschen x r)