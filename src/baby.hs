-------------------------------------------------------------------------------
-- Functions                                                                 --
-------------------------------------------------------------------------------

doubleMe x = x + x

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100
                        then x
                        else x*2 

doubleSmallNumber' x = (if x > 100 then x else x*2) + 1

cube x = x * x * x

-------------------------------------------------------------------------------
-- Lists                                                                     --
-------------------------------------------------------------------------------
lostNumbers = [4,8,15,16,23,42]

-- Concatenate lists
concatNums = [1,2,3,4] ++ [9,10,11,12]

-- Concatenate strings
-- In Haskell, strings are just lists of Chars so the same operators work for
-- them
concatStrs = "hello" ++ " " ++ "world"
concatStrsSilly = ['w','o'] ++ ['o','t']

-- Lists in Haskell are singly linked and must be traversed entirely when using
-- ++ which is O(n) but can be prepended with the cons operator (:) in O(1) time
consCharAndStr = 'A':" SMALL CAT"
consNums = 5:[1,2,3,4,5]

-- indexing!
jurassicPark = "Steve Buscemi" !! 6
floatOn = [9.4,33.2,96.2,11.2,23.25] !! 1

-- data structures in Haskell are homogenous so types need to be the same,
-- but lengths can vary

-- list comparison
trueGT = [3,2,1] > [2,1,0]
trueGT' = [3,2,1] > [2,10,100]
trueGTDiffLength = [3,4,2] > [3,4]
equalLists = [3,4,2] == [3,4,2]

-- (= head first)
n5 = head [5,4,3,2,1]

-- (= tail rest)
t = tail [5,4,3,2,1]

-- (= butlast init)
b = init [5,4,3,2,1]

l = length [5,4,3,2,1]

trueNull = null [1,2,3]
falseNull = null []

theOl'Switcheroo = reverse [5,4,3,2,1]

heyThisIsLikeClojure = take 3 [5,4,2]
heyThisIsLikeClojure' = drop 1 [4,2]

min = minimum [1,9,2]
max = maximum [1,9,2]

-- (= sum (partial reduce +))
s = sum [1,2,3]

-- (= product (partial reduce *))
p = product [6,2,1,2]

-- elem used for list membership, use infix notation for this one
yep = 4 `elem` [3,4,5,6]
nope = 10 `elem` [3,4,5,6]

-------------------------------------------------------------------------------
-- Ranges                                                                    --
-------------------------------------------------------------------------------
one2twenty = [1..20]
lowercaseLetters = ['a'..'z']
partialAlphabet = ['K'..'Z']

someEvens = [2,4..20]
someOdds = [3,6..20] -- => [3,6,9,12,15,18]

-- decrementing ranges is possible, but an explicit step is required
countdown = [20,19..1]
emptyList = [20..1]

-- floats can be used in ranges but they're ill defined and ill advised
thisHas10Elems = take 10 (cycle [1,2,3])
thisHas12Elems = take 12 (cycle "LOL ")

ol'Reliable = take 10 (repeat 5)
easier = replicate 10 5


-------------------------------------------------------------------------------
-- List Comprehensions                                                       --
-------------------------------------------------------------------------------
first10NsDoubled = [x*2 | x <- [1..10]]
complicated = [x | x <- [50..100], x `mod` 7 == 3]

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x ]

-- (= /= not=)
manyPredicates = [ x | x <- [10..20], x /= 13, x /= 15, x /= 19 ]
multipleLists = [ x*y | x <- [2,5,10], y <- [8,10,11], x*y > 50 ]


nouns = ["hobo","frog","pope"]
adjectives = ["lazy","grouchy","scheming"]
allCombos = [ adjective ++ " " ++ noun | adjective <- adjectives, noun <- nouns ]

length' xs = sum [1 | _ <- xs]

-- don't forget, strings are just [Char]
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z'] ]

-- nested list comps
xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]
nestedListComp = [ [ x | x <- xs, even x] | xs <- xxs ]


-------------------------------------------------------------------------------
-- Tuples                                                                    --
-------------------------------------------------------------------------------

-- Tuples differ in type depending on number of elements
-- (i.e. a pair and a triple of Int are different types), Tuples also need not
-- be homogenous

-- pairs (i.e. tuples of size 2) are special and have special functions
eight = fst (8,11)
wow = fst ("Wow", False)

tup = (0,'a',[],"umm")

eleven = snd (8,11)
false = snd ("Wow", False)

likeZipmapButListofPairs = zip [1,2,3,4,5] (repeat 5)


rightTrianglesWithSmallPerims = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == 24 ]
