{-# LANGUAGE OverloadedStrings #-}

import Cards
import Session
import Data.Aeson (Value (..), decode)
import qualified Data.ByteString.Lazy as BL
import Web.Scotty

main :: IO ()
main = scotty 3000 $ do
  get "/cards" $ do
    -- create a ace of spades card and print it to to screen, return nothing to the user
    let card = Card {suite = Spades, rank = Ace}
    let cardStr = toString card
    liftIO $ putStrLn cardStr

  -- Serve a static HTML file
  get "/" $ do
    file "pages/index.html"

  -- creates a new game and returns the game id
  get "/api/create/" $ do
    gameId <- liftIO createGame
    json gameId





decodeJson :: BL.ByteString -> Maybe Value
decodeJson = Data.Aeson.decode
