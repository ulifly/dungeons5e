# frozen_string_literal: true


require_relative "dungeons5e/version"
require_relative "dungeons5e/client"
require_relative "dungeons5e/monster"
module Dungeons5e
  class Error < StandardError; end
  class ClientError < Error; end
  class ServerError < Error; end

  def self.monsters
    Monsters.new.list
  end

  def self.monster
    Monsters.new.find(id)
  end



end
