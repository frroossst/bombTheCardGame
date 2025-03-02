// src/server.gleam
import gleam/http/request.{Request}
import gleam/http/response.{Response}
import mist

pub fn main() {
  let handler = fn(req: Request(mist.Connection)) -> Response(mist.ResponseData) {
    case req.path {
      ["/hello"] ->
        response.new(200)
        |> response.set_body(mist.String("Hello, World!"))
      _ ->
        response.new(404)
        |> response.set_body(mist.String("Not Found"))
    }
  }

  let service = mist.new(handler)

  // Start the server on port 3000
  mist.start_http(3000, service)
}
