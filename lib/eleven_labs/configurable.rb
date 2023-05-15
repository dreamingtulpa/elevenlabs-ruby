# frozen_string_literal: true

module ElevenLabs
  module Configurable
    attr_accessor :api_key
    attr_writer :api_endpoint

    class << self
      # List of configurable keys for {Datatrans::Client}
      # @return [Array] of option keys
      def keys
        @keys ||= %i[api_key api_endpoint]
      end
    end

    # Set configuration options using a block
    def configure
      yield self
    end

    # API endpoint methods
    def api_endpoint
      @api_endpoint ||= "https://api.elevenlabs.io/v1"
    end

    private

    def options
      Hash[ElevenLabs::Configurable.keys.map { |key| [key, send(key)] }]
    end
  end
end
