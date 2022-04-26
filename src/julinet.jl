module julinet

include("Server.jl");

using .Server

start() = Server.start()
route!(route::String) = Server.route!(route)
show_routes() = Server.show_routes


end # module
