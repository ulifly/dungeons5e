require "test_helper"

module Dungeons5e
     class ClientTest < Minitest::Test

       def client
         Client.new("https://www.dnd5eapi.co/api/")
       end

       def test_client_class_must_exist
         refute_nil Client.new("https://www.dnd5eapi.co/api/")
       end

       def test_client_must_raise_an_exception_when_path_missing
           assert_raises ClientError do
           client.get('/bad_req/err')
          end
       end
#-----------------get monsters tests-----------------------------------
       def test_client_must_get_all_monsters
           assert_instance_of Hash, client.get('monsters')
           assert_instance_of Array, client.get('monsters')[:results]
       end

       def test_client_must_get_a_monster
          assert_instance_of Hash, client.get("monsters/tarrasque")
       end
#-----------------get Clases tests------------------------------------
      def test_client_must_get_all_Classes
          assert_instance_of Hash, client.get('Classes')
          assert_instance_of Array, client.get('Classes')[:results]
      end

      def test_client_must_get_a_monster
         assert_instance_of Hash, client.get("Classes/barbarian")
      end


     end
end
