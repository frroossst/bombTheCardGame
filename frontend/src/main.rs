use gloo_console::log;
use yew::prelude::*;


struct CardDeck {
    cards: Vec<Card>,
}

impl CardDeck {

    fn new() -> Self {
        let mut cards = Vec::new();

        for i in 1..14 {
            cards.push(Card {
                value: i,
                suite: Suite::Spades,
                img_src: format!("https://raw.githubusercontent.com/frroossst/bombTheCardGame/master/assets/spade_{}.png", i),
            });
        }

        for i in 1..14 {
            cards.push(Card {
                value: i,
                suite: Suite::Hearts,
                img_src: format!("https://raw.githubusercontent.com/frroossst/bombTheCardGame/master/assets/heart_{}.png", i),
            });
        }

        for i in 1..14 {
            cards.push(Card {
                value: i,
                suite: Suite::Diamonds,
                img_src: format!("https://raw.githubusercontent.com/frroossst/bombTheCardGame/master/assets/diamond_{}.png", i),
            });
        }

        for i in 1..14 {
            cards.push(Card {
                value: i,
                suite: Suite::Clubs,
                img_src: format!("https://raw.githubusercontent.com/frroossst/bombTheCardGame/master/assets/club_{}.png", i),
            });
        }

        Self {
            cards,
        }
    }

}

struct Card {
    value: u64,
    suite: Suite,
    img_src: String,
}

impl Card {
    fn get_html(&self) -> Html {
        html! {
            <div class="card">
            <div class="card__content">
            <img src={self.img_src.clone()} />
            </div>
            </div>
        }
    }
}

enum Suite {
    Spades,
    Hearts,
    Diamonds,
    Clubs,
}


#[function_component(App)]
fn app() -> Html {

    let deckofcards = CardDeck::new();
    log!(deckofcards.cards.len());

    let onclick = {
        let object = "hello world!";
        log!(object);

    };

    let all_cards = deckofcards.cards.iter().map(|card| card.get_html()).collect::<Html>();

    html! {
        <div>
            <br/><br/><br/>

            <center>

            <br/><br/>
            <br/><br/>

            { all_cards }


            </center>
        </div>
    }
}   

fn main() {
    yew::start_app::<App>();
}
