module Dungeons5e
  class Monsters
      def initialize
        @client = Client.new("https://www.dnd5eapi.co/api/")
      end

      def all
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
