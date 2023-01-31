use yew::prelude::*;
use gloo_console::log;

struct Model {
    value: i64,
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
            <center>
            <button {onclick}>{"Click me!"}</button>
            <p>{ state.value }</p>

            <div class="card">
            <div class="card__content">
            </div></div>
            </center>
        </div>
    }
}   

fn main() {
    yew::start_app::<App>();
}
