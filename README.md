# ElevenLabs Ruby client

This is a Ruby client for the [ElevenLabs](https://elevenlabs.io/) API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'elevenlabs-ruby'
```

## Usage

Grab your token from your ElevenLabs account and authenticate by configuring `api_token`:

```ruby
ElevenLabs.configure do |config|
  config.api_key = "your_api_token"
end
```

Checkout their [API docs](https://api.elevenlabs.io/docs) for available endpoints.

```ruby
client = ElevenLabs::Client.new(api_key: 'xxxxxxxxxx')
voices = client.get('voices')
voice_id = voices['voices'].first['voice_id']
speech = client.post("text-to-speech/#{voice_id}", { text: 'your text' }) # returns a binary string
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.
