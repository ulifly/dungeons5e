# frozen_string_literal: true


require_relative "dungeons5e/version"
require_relative "dungeons5e/client"

module Dungeons5e
  class Error < StandardError; end
  class ClientError < Error; end
  class ServerError < Error; end

  def self.monsters
    [{}]
  end



end
