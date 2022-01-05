module Dungeons5e
  class Monster
      def initialize
        @client = Client.new("https://www.dnd5eapi.co/api/")
      end

    #  response = client.get(endpoint_name)
    #  range = (2..response.dig(:info, :pages))
    #  response[:results] + AsyncStream.new(range).sum do |page|



      def all
         response = client.get("monsters")
         binding.irb
      end

      def list(page = nil)
        client.get("monsters", query: {page: page})[:results]
      end

      def find(id)
        client.get("monsters/#{id}")
      end

      private

      attr_reader :client
  end
end
