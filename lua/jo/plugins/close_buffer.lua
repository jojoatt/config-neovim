-- bdelete
require("close_buffers").delete({ type = "hidden", force = true }) -- Delete all non-visible buffers
require("close_buffers").delete({ type = "nameless" }) -- Delete all buffers without name
require("close_buffers").delete({ type = "this" }) -- Delete the current buffer
require("close_buffers").delete({ type = 1 }) -- Delete the specified buffer number
require("close_buffers").delete({ regex = ".*[.]md" }) -- Delete all buffers matching the rege
