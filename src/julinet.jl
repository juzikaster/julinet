module julinet

include("Server.jl");

using .Server

start() = Server.start()
route!() = Server.route!()
show_routes() = Server.show_routes


end # module
