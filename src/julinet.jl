module julinet

include("Server.jl");
using .Server

const start = Server.start(host, port)

end # module
