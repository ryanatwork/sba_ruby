require 'faraday'

module SBA
  module Configuration
    VALID_OPTIONS_KEYS = [
      :adapter,
      :endpoint,
      :user_agent,
      :proxy,
      :format].freeze

    VALID_FORMATS = [
      :json,
      :xml].freeze

    DEFAULT_ADAPTER      = Faraday.default_adapter
    DEFAULT_ENDPOINT     = nil
    DEFAULT_PROXY        = nil
    DEFAULT_FORMAT       = :json
    DEFAULT_USER_AGENT   = "SBA Ruby Gem #{SBA::VERSION}".freeze

    attr_accessor *VALID_OPTIONS_KEYS

    def self.extended(base)
      base.reset
    end

    def configure
      yield self
    end

    def options
      VALID_OPTIONS_KEYS.inject({}){|o,k| o.merge!(k => send(k)) }
    end

    def reset
      self.adapter      = DEFAULT_ADAPTER
      self.user_agent   = DEFAULT_USER_AGENT
      self.endpoint     = DEFAULT_ENDPOINT
      self.format       = DEFAULT_FORMAT
      self.proxy        = DEFAULT_FORMAT
    end
  end
end
