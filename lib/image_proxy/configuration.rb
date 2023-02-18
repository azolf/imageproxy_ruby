# frozen_string_literal: true

# ImageProxy module
module ImageProxyRuby
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  # configure class
  class Configuration
    attr_accessor :server
  end
end
