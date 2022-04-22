module julinet

include("Server.jl");
using .Server

start_server(host::String, port::Int) = start(host, port)

end # module
