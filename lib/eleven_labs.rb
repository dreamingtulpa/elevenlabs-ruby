# frozen_string_literal: true

require "eleven_labs/client"

module ElevenLabs
  class Error < StandardError; end

  class << self
    include ElevenLabs::Configurable

    def client
      return @client if defined?(@client)
      @client = ElevenLabs::Client.new(options)
    end
  end
end
