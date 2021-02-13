require 'net/http'

module HTTP 

    def self.get(url)
        uri = URI url
        Net::HTTP.get uri
    end

    def self.post(url, params)
        uri = URI url
        Net::HTTP.post_form uri, params
    end

end


# res = HTTP.get('http://localhost:9393/hello')
# p res

# res = HTTP.post("http://localhost:9393/create_user", { :name => 'Diego' })
# p res.body


# res = HTTP.get('http://localhost:9393')
# p res

res = HTTP.post("http://localhost:9393/vote", { :name => 'Diego' })
p res.body