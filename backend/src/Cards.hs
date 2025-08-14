module Cards (Suite(..), Rank(..), Card(..), toString) where

data Suite = Hearts | Diamonds | Clubs | Spades deriving (Show)

data Rank = Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King | Ace deriving (Show)
data Card = Card {suite :: Suite, rank :: Rank}

toString :: Card -> String
toString (Card s r) = show r ++ " of " ++ show s

