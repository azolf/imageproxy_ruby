# frozen_string_literal: true

require 'image_proxy/operations/smart_crop'
require 'image_proxy/operations/rectangle_crop'
require 'image_proxy/operations/rotation'
require 'image_proxy/operations/flip'
require 'image_proxy/operations/quality'
require 'image_proxy/operations/format'
require 'image_proxy/operations/resize'

module ImageProxyRuby
  # represent Image with different functionalities
  class Image
    include Operations::SmartCrop
    include Operations::RectangleCrop
    include Operations::Rotation
    include Operations::Flip
    include Operations::Quality
    include Operations::Format
    include Operations::Resize

    attr_accessor :remote_url, :operations

    def initialize(remote_url)
      @remote_url = remote_url
      @operations = []
    end

    def url
      operations_str = operations.join(',')

      "#{ImageProxyRuby.configuration.server}#{operations_str}/#{remote_url}"
    end

    alias size resize
    alias to_s url
  end
end
