import Test.Hspec
import Problem

import Data.Maybe

main :: IO ()
main = hspec $ do
  describe "p1" $ it "" $
    p1 10 `shouldBe` 23
  describe "problem1" $ it "" $
    problem1 `shouldBe` 233168
  describe "fib" $ it "" $
    map fib [0..9] `shouldBe` [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
  describe "problem2" $ it "" $
    problem2 `shouldBe` 4613732
  describe "listPrimeFactor" $ it "" $
    listPrimeFactor 13195 [] `shouldBe` [5, 7, 13, 29]
  describe "problem3" $ it "" $
    problem3 `shouldBe` 6857
  describe "palindrome" $ it "" $ do
    palindrome (show 101) `shouldBe` True
    palindrome (show 1001) `shouldBe` True
  describe "problem4" $ it "" $
    head problem4 `shouldBe` 906609
  describe "problem5" $ it "" $
    problem5 10 `shouldBe` 2520
  describe "problem6" $ it "" $
    problem6 10 `shouldBe` 3025 - 385
  describe "isPrime" $ it "" $
    map isPrime [7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47] `shouldBe` map (\n -> True) [7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47]
  describe "problem7" $ do
    it "premise" $ problem7 6 `shouldBe` 13
    --it "answer" $ problem7 10001 `shouldBe` 104743
  describe "stringToListInt" $
    it "" $ stringToListInt "012345" `shouldBe` [0..5]
  describe "listSeries" $ do
    it "" $ listSeries [] 2 [0..3] `shouldBe` [[0, 1], [1, 2], [2, 3]]
    it "" $ listSeries [] 3 [0..3] `shouldBe` [[0, 1, 2], [1, 2, 3]]
    it "" $ listSeries [] 4 [0..3] `shouldBe` [[0, 1, 2, 3]]
  describe "problem8" $ do
    let x =  "7316717653133062491922511967442657474235534919493496983520312774506326239578318016984801869478851843858615607891129494954595017379583319528532088055111254069874715852386305071569329096329522744304355766896648950445244523161731856403098711121722383113622298934233803081353362766142828064444866452387493035890729629049156044077239071381051585930796086670172427121883998797908792274921901699720888093776657273330010533678812202354218097512545405947522435258490771167055601360483958644670632441572215539753697817977846174064955149290862569321978468622482839722413756570560574902614079729686524145351004748216637048440319989000889524345065854122758866688116427171479924442928230863465674813919123162824586178664583591245665294765456828489128831426076900422421902267105562632111110937054421750694165896040807198403850962455444362981230987879927244284909188845801561660979191338754992005240636899125607176060588611646710940507754100225698315520005593572972571636269561882670428252483600823257530420752963450"
    it "premise" $ problem8 x 4 `shouldBe` 5832
    it "problem" $ problem8 x 13 `shouldBe` 23514624000
  describe "problem10" $ do
    it "" $ problem10 10 `shouldBe` 17
--    it "" $ problem10 2000000 `shouldBe` 142913828922
  describe "problem13" $ do
    it "" $ problem13 p13 `shouldBe` 5537376230
  describe "problem16" $ do
    it "premise" $ problem16 15 `shouldBe` 26
    it "problem" $ problem16 1000 `shouldBe` 1366

p13 = [37107287533902102798797998220837590246510135740250 :: Integer
      ,46376937677490009712648124896970078050417018260538 :: Integer
      ,74324986199524741059474233309513058123726617309629 :: Integer
      ,91942213363574161572522430563301811072406154908250 :: Integer
      ,23067588207539346171171980310421047513778063246676 :: Integer
      ,89261670696623633820136378418383684178734361726757 :: Integer
      ,28112879812849979408065481931592621691275889832738 :: Integer
      ,44274228917432520321923589422876796487670272189318 :: Integer
      ,47451445736001306439091167216856844588711603153276 :: Integer
      ,70386486105843025439939619828917593665686757934951 :: Integer
      ,62176457141856560629502157223196586755079324193331 :: Integer
      ,64906352462741904929101432445813822663347944758178 :: Integer
      ,92575867718337217661963751590579239728245598838407 :: Integer
      ,58203565325359399008402633568948830189458628227828 :: Integer
      ,80181199384826282014278194139940567587151170094390 :: Integer
      ,35398664372827112653829987240784473053190104293586 :: Integer
      ,86515506006295864861532075273371959191420517255829 :: Integer
      ,71693888707715466499115593487603532921714970056938 :: Integer
      ,54370070576826684624621495650076471787294438377604 :: Integer
      ,53282654108756828443191190634694037855217779295145 :: Integer
      ,36123272525000296071075082563815656710885258350721 :: Integer
      ,45876576172410976447339110607218265236877223636045 :: Integer
      ,17423706905851860660448207621209813287860733969412 :: Integer
      ,81142660418086830619328460811191061556940512689692 :: Integer
      ,51934325451728388641918047049293215058642563049483 :: Integer
      ,62467221648435076201727918039944693004732956340691 :: Integer
      ,15732444386908125794514089057706229429197107928209 :: Integer
      ,55037687525678773091862540744969844508330393682126 :: Integer
      ,18336384825330154686196124348767681297534375946515 :: Integer
      ,80386287592878490201521685554828717201219257766954 :: Integer
      ,78182833757993103614740356856449095527097864797581 :: Integer
      ,16726320100436897842553539920931837441497806860984 :: Integer
      ,48403098129077791799088218795327364475675590848030 :: Integer
      ,87086987551392711854517078544161852424320693150332 :: Integer
      ,59959406895756536782107074926966537676326235447210 :: Integer
      ,69793950679652694742597709739166693763042633987085 :: Integer
      ,41052684708299085211399427365734116182760315001271 :: Integer
      ,65378607361501080857009149939512557028198746004375 :: Integer
      ,35829035317434717326932123578154982629742552737307 :: Integer
      ,94953759765105305946966067683156574377167401875275 :: Integer
      ,88902802571733229619176668713819931811048770190271 :: Integer
      ,25267680276078003013678680992525463401061632866526 :: Integer
      ,36270218540497705585629946580636237993140746255962 :: Integer
      ,24074486908231174977792365466257246923322810917141 :: Integer
      ,91430288197103288597806669760892938638285025333403 :: Integer
      ,34413065578016127815921815005561868836468420090470 :: Integer
      ,23053081172816430487623791969842487255036638784583 :: Integer
      ,11487696932154902810424020138335124462181441773470 :: Integer
      ,63783299490636259666498587618221225225512486764533 :: Integer
      ,67720186971698544312419572409913959008952310058822 :: Integer
      ,95548255300263520781532296796249481641953868218774 :: Integer
      ,76085327132285723110424803456124867697064507995236 :: Integer
      ,37774242535411291684276865538926205024910326572967 :: Integer
      ,23701913275725675285653248258265463092207058596522 :: Integer
      ,29798860272258331913126375147341994889534765745501 :: Integer
      ,18495701454879288984856827726077713721403798879715 :: Integer
      ,38298203783031473527721580348144513491373226651381 :: Integer
      ,34829543829199918180278916522431027392251122869539 :: Integer
      ,40957953066405232632538044100059654939159879593635 :: Integer
      ,29746152185502371307642255121183693803580388584903 :: Integer
      ,41698116222072977186158236678424689157993532961922 :: Integer
      ,62467957194401269043877107275048102390895523597457 :: Integer
      ,23189706772547915061505504953922979530901129967519 :: Integer
      ,86188088225875314529584099251203829009407770775672 :: Integer
      ,11306739708304724483816533873502340845647058077308 :: Integer
      ,82959174767140363198008187129011875491310547126581 :: Integer
      ,97623331044818386269515456334926366572897563400500 :: Integer
      ,42846280183517070527831839425882145521227251250327 :: Integer
      ,55121603546981200581762165212827652751691296897789 :: Integer
      ,32238195734329339946437501907836945765883352399886 :: Integer
      ,75506164965184775180738168837861091527357929701337 :: Integer
      ,62177842752192623401942399639168044983993173312731 :: Integer
      ,32924185707147349566916674687634660915035914677504 :: Integer
      ,99518671430235219628894890102423325116913619626622 :: Integer
      ,73267460800591547471830798392868535206946944540724 :: Integer
      ,76841822524674417161514036427982273348055556214818 :: Integer
      ,97142617910342598647204516893989422179826088076852 :: Integer
      ,87783646182799346313767754307809363333018982642090 :: Integer
      ,10848802521674670883215120185883543223812876952786 :: Integer
      ,71329612474782464538636993009049310363619763878039 :: Integer
      ,62184073572399794223406235393808339651327408011116 :: Integer
      ,66627891981488087797941876876144230030984490851411 :: Integer
      ,60661826293682836764744779239180335110989069790714 :: Integer
      ,85786944089552990653640447425576083659976645795096 :: Integer
      ,66024396409905389607120198219976047599490197230297 :: Integer
      ,64913982680032973156037120041377903785566085089252 :: Integer
      ,16730939319872750275468906903707539413042652315011 :: Integer
      ,94809377245048795150954100921645863754710598436791 :: Integer
      ,78639167021187492431995700641917969777599028300699 :: Integer
      ,15368713711936614952811305876380278410754449733078 :: Integer
      ,40789923115535562561142322423255033685442488917353 :: Integer
      ,44889911501440648020369068063960672322193204149535 :: Integer
      ,41503128880339536053299340368006977710650566631954 :: Integer
      ,81234880673210146739058568557934581403627822703280 :: Integer
      ,82616570773948327592232845941706525094512325230608 :: Integer
      ,22918802058777319719839450180888072429661980811197 :: Integer
      ,77158542502016545090413245809786882778948721859617 :: Integer
      ,72107838435069186155435662884062257473692284509516 :: Integer
      ,20849603980134001723930671666823555245252804609722 :: Integer
      ,53503534226472524250874054075591789781264330331690 :: Integer]

