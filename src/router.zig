const std = @import("std");
const zap = @import("zap");

pub const HandlerResult = union(enum) {
    Found: zap.HttpRequestFn,
    NotFound: void,
};

pub const Routes = struct {
    handlers: std.StringHashMap(zap.HttpRequestFn) = undefined,

    pub fn init() Routes {
        return Routes{
            .handlers = std.StringHashMap(zap.HttpRequestFn).init(std.heap.page_allocator),
        };
    }

    pub fn subscribe(self: *Routes, path: []const u8, handler: zap.HttpRequestFn) void {
        self.handlers.put(path, handler) catch return;
    }

    // it checks if it has the subscribed routes, if it does, it returns the function handler
    // else it returns null, the caller should check for null
    pub fn get_handler(self: *Routes, path: []const u8) HandlerResult {
        const handler = self.handlers.get(path);
        if (handler == null) {
            return HandlerResult{ .NotFound = void{} };
        } else {
            return HandlerResult{ .Found = handler.? };
        }
    }
};
