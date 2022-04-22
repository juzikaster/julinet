module Server

using HTTP

export start

function start(host::String, port::Int)
    HTTP.listen(host, port) do http
        @show http.message
        @show HTTP.header(http, "Content-Type")
        while !eof(http)
            println("body data: ", String(readavailable(http)))
        end
        HTTP.setstatus(http, 404)
        HTTP.setheader(http, "Foo-Header" => "bar")
        startwrite(http)
        write(http, "response body")
        write(http, "more response body")
    end
end

function start_ws(host::String, port::Int)
    
end

end # module