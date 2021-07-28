require 'opus-ruby'
require 'active_support/inflector'
require 'mumble-ruby2/version'
require 'mumble-ruby2/thread_tools'
require 'mumble-ruby2/messages'
require 'mumble-ruby2/connection'
require 'mumble-ruby2/model'
require 'mumble-ruby2/user'
require 'mumble-ruby2/channel'
require 'mumble-ruby2/client'
require 'mumble-ruby2/audio_player'
require 'mumble-ruby2/packet_data_stream'
require 'mumble-ruby2/img_reader'
require 'mumble-ruby2/cert_manager'
require 'mumble-ruby2/audio_recorder'
require 'hashie'

module Mumble
  DEFAULTS = {
    sample_rate: 48000,
    bitrate: 32000,
    ssl_cert_opts: {
      cert_dir: File.expand_path("./"),
      country_code: "US",
      organization: "github.com",
      organization_unit: "Engineering"
    }
  }

  def self.configuration
    @configuration ||= Hashie::Mash.new(DEFAULTS)
  end

  def self.configure
    yield(configuration) if block_given?
  end

  Thread.abort_on_exception = true
end
