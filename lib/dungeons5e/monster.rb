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
         total_monsters = response.dig (:count)
      end

      def list(page = 34)
        client.get("monsters", query: {page: page})[:results]
        binding.irb
      end

      def find(id)
        client.get("monsters/#{id}")
      end

      private

      attr_reader :client
  end
end
