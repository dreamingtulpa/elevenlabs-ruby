# frozen_string_literal: true

require "eleven_labs/configurable"
require "eleven_labs/connection"

module ElevenLabs
  class Client
    include ElevenLabs::Configurable
    include ElevenLabs::Connection

    def initialize(options = {})
      # Use options passed in, but fall back to module defaults
      ElevenLabs::Configurable.keys.each do |key|
        value = options.key?(key) ? options[key] : ElevenLabs.instance_variable_get(:"@#{key}")
        instance_variable_set(:"@#{key}", value)
      end
    end
  end
end
