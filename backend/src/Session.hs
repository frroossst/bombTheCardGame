{-# LANGUAGE OverloadedStrings #-}

module Session (GameID(..), createGame, toJSON) where


import Data.Aeson (ToJSON, toJSON, object, (.=))
import System.Random (randomRIO)
import Control.Monad (replicateM)

randomChar :: IO Char
randomChar = randomRIO ('A', 'Z')


randomDigit :: IO Char
randomDigit = randomRIO ('0', '9')


-- global array of GameIDs to look through and ensure only one such game id exists

-- GameID of format ABC123
data GameID = GameID String String deriving (Show, Eq)

-- toJSON instance for GameID
instance ToJSON GameID where
    toJSON (GameID letters digits) =
        object ["gameId" .= (letters ++ digits)]

-- createGame returns a new game id
createGame :: IO GameID
createGame = do
    -- generate a random game id
    letters <- replicateM 3 randomChar
    digits <- replicateM 3 randomDigit
    return $ GameID letters digits

