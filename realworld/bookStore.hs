data BookInfo = Book Int String [String]
 deriving (Show)


-- myInfo = Book 9780135072455 "Algebra of Programming" ["Richard Bird", "Oege de Moor"]



-- type ReviewBody = String

-- data BetterReview = BetterReview BookInfo CustomerID ReviewBody

-- type CustomerID = Int
-- type CardHolder = String
-- type CardNumber = String
-- type Address = [String]

-- data BillingInfo = CreditCard CardNumber CardHolder Address
--  | CashOnDelivery
--  | Invoice CustomerID
--  deriving (Show)


-- sumList (x:xs) = x + sumList xs
-- sumList [] = 0



-- bookID (Book id title authors) = id
-- bookTitle (Book id title authors) = title
-- bookAuthors (Book id title authors) = authors

 -- nicerID (Book id _ _ ) = id
 -- nicerTitle (Book _ title _ ) = title
 -- nicerAuthors (Book _ _ authors) = authors

sumList (x:xs) = x + sumList xs
sumList ([])   = 0




type TransactionId        = String
type Amount               = String
type Details              = String
type DestinationAccountId = String

data Transaction = Transaction String String String String

myTransactionId :: Transaction -> (String,String)
myTransactionId (Transaction a b _ _) = (a,b)

-- myTransactionId (Transaction TransactionId _ _ _) = TransactionId
-- myAmount (Transaction _ _ _ _)
-- myDetails (Transaction _ _ _ _)
-- myDestinationAccountId (Transaction _ _ _ _)
foo = Transaction "A" "b" "c" "d"




-- data Transaction = Transaction TransactionId Amount Details DestinationAccountId

-- type CustomerID = String
-- type Address    = String

-- data Customer = Customer {
--  customerID :: CustomerID
--  , customerName :: String
--  , customerAddress :: [Address]
-- } deriving (Show)

-- fooCustomer = Customer {
--     customerID = "XDFXWWWQ123"
--   , customerName = "Frank"
--   , customerAddress = ["Something","Here"]
-- }


-- personAdd (String a b) = b




data Maybe a = Just a
 | Nothing