class Apis
    def api_simple
        HTTParty.get ("https://jsonplaceholder.typicode.com/todos/1")
    end
end