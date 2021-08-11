
class UrlFetcher
  attr_reader :config

  def initialize(url, options = {})
    @config = {
      url:      url,
      port:     80,
      verb:     "get",
      protocol: "http"
    }

    @config.merge!(options)
  end
end

fetcher = UrlFetcher.new("example.com", port: 8080)
p fetcher.config
