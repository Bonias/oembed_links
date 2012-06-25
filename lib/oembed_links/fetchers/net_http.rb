require 'net/http'

class OEmbed
  module Fetchers
    class NetHTTP
      
      def name
        "NetHTTP"
      end

      def fetch(url)
        uri = URI.parse(url)
        response = Net::HTTP.get_response(uri)
        response.is_a?(Net::HTTPSuccess) ? response.body : nil
      end
      
    end
  end
end

OEmbed.register_fetcher(OEmbed::Fetchers::NetHTTP)
