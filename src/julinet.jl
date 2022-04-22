module julinet

include("Server.jl");

using .Server

start() = Server.start()

end # module
