module Server

using HTTP

export start
export route!
export show_routes

routes = []

function start(host::String = "127.0.0.1", port::Int = 8081)
    HTTP.listen(host, port) do http
        startwrite(http)
        write(http, "response body")
        write(http, "more response body")
    end
end

function start_ws(host::String, port::Int)
    
end

function route!(route::String)
    if route !== nothing
        push!(routes, route)
    else
        @info "ERROR"
    end
end

function show_routes()
    @info "Routes"
    print(routes)
end

end # module