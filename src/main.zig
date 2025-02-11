const std = @import("std");
const zap = @import("zap");
const router = @import("router.zig"); // Import the router module

fn on_request_verbose(r: zap.Request) void {
    // Initialize the router
    var routerInstance = router.Routes.init();

    // Add routes
    routerInstance.subscribe("/", on_request_minimal);
    routerInstance.subscribe("/play", on_request_hello);
    routerInstance.subscribe("/join", on_request_hello);

    switch (routerInstance.get_handler(r.path orelse "/")) {
        .Found => |handler| {
            handler(r);
        },
        .NotFound => {
            // Return 404 in HTML
            r.sendBody("<html><body><h1>404 Not Found</h1></body></html>") catch return;
        },
    }
}

fn on_request_minimal(r: zap.Request) void {
    r.sendBody("<html><body><h1>Hello from ZAP!!!</h1></body></html>") catch return;
}

fn on_request_hello(r: zap.Request) void {
    // returj html from /views/index.html
    r.sendFile("views/index.html") catch return;
}

pub fn main() !void {
    var listener = zap.HttpListener.init(.{
        .port = 6969,
        .on_request = on_request_verbose,
        .log = true,
        .max_clients = 100000,
    });
    try listener.listen();

    std.debug.print("Listening on http://0.0.0.0:6969\n", .{});

    // start worker threads
    zap.start(.{
        .threads = 2,
        .workers = 2,
    });
}
