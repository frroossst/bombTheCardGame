use gloo_console::log;
use yew::prelude::*;

struct Model {
    value: i64,
}

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

enum Suite {
    Spades,
    Hearts,
    Diamonds,
    Clubs,
}


#[function_component(App)]
fn app() -> Html {
    let state = use_state(|| Model { 
        value: 0 
    });

    let onclick = {
        let state = state.clone();

        let object = "hello world!";
        log!(object);

        Callback::from(move |_| {
            state.set(Model {
                value: state.value + 1 
            })
        })
    };

    html! {
        <div>
            <br/><br/><br/>

            <center>
            <button {onclick}>{"Click me!"}</button>

            <br/><br/>
            <br/><br/>

            <div class="card">
            <div class="card__content">
            <img src="https://raw.githubusercontent.com/frroossst/bombTheCardGame/master/assets/back-0062ff.png" alt="Yew logo" />
            </div>
            </div>

            <br/><br/><br/>

            <div class="card">
            <div class="card__content">
            <img src="https://raw.githubusercontent.com/frroossst/bombTheCardGame/master/assets/diamond_1.png" alt="Yew logo" />
            </div>
            </div>

            </center>
        </div>
    }
}   

fn main() {
    yew::start_app::<App>();
}
