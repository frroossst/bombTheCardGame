import gleam/dynamic
import gleam/int
import gleam/list
import gleam/result
import lustre
import lustre/attribute
import lustre/effect.{type Effect}
import lustre/element.{type Element}
import lustre/event

// models the card the player has
// also the cards in the river 
// all other state is server side
type Card {
  Card(suit: Suit, rank: Rank)
}

type Suit {
  Hearts
  Diamonds
  Clubs
  Spades
}

type Rank {
  Two
  Three
  Four
  Five
  Six
  Seven
  Eight
  Nine
  Ten
  Jack
  Queen
  King
  Ace
}

type Model {
  Model(player_cards: List(Card), river_cards: List(Card))
}

pub fn main() {
  let app = lustre.application(init, update, view)
  let assert Ok(_) = lustre.start(app, "#app", Nil)

  Nil
}

fn init(_) -> #(Model, Effect(Msg)) {
  let model = Model(player_cards: [], river_cards: [])
  let effect = effect.none()

  #(model, effect)
}

type Msg {
  PlayCard(Card)
  DealCard(Card)
}

fn update(model: Model, msg: Msg) -> #(Model, Effect(Msg)) {
  case msg {
    PlayCard(m) -> {
      // add the card to the river
      let river_cards = list.append(model.river_cards, [m])
      let new_model =
        Model(player_cards: model.player_cards, river_cards: river_cards)
      #(new_model, effect.none())
    }
    DealCard(m) -> {
      // add the card to the player's hand
      let player_cards = list.append(model.player_cards, [m])
      let new_model =
        Model(player_cards: player_cards, river_cards: model.river_cards)
      #(new_model, effect.none())
    }
  }
}

fn view(model: Model) -> Element(Msg) {
  todo
}
