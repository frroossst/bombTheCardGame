{application, server, [
    {vsn, "1.0.0"},
    {applications, [gleam_erlang,
                    gleam_http,
                    gleam_httpc,
                    gleam_otp,
                    gleam_stdlib,
                    gleam_yielder,
                    gleeunit,
                    mist]},
    {description, "Backend for the card game app"},
    {modules, [server]},
    {registered, []}
]}.
